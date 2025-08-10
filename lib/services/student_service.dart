import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';
import 'package:nutrikid_app/entities/student/student.dart';
import 'package:nutrikid_app/model/students_response/students_response.dart';
import 'package:nutrikid_app/shared/dio.dart';
import 'package:nutrikid_app/utils/shared_preferences.dart';

const CURRENT_STUDENT_ID = 'current_student_id';

class StudentService {
  Future<void> setStudentId(int id) async {
    final prefs = await sharedPreferences();
    await prefs.setInt(CURRENT_STUDENT_ID, id);
  }

  Future<int?> getStudentId() async {
    final prefs = await sharedPreferences();
    final studentId = prefs.getInt(CURRENT_STUDENT_ID);

    return studentId;
  }

  Future<StudentsResponse> getStudents() async {
    try {
      final appBloc = Modular.get<AppBloc>();
      final profile = appBloc.state.profile;

      Map<String, dynamic> queryParameters = {'limit': 500};

      if (profile?.isParent == true) {
        queryParameters.addAll({'parent_id': profile?.id});
      }

      if (profile == null && appBloc.state.currentSchool != null) {
        queryParameters.addAll({'school_id': appBloc.state.currentSchool?.id});
      }

      final response = await http().get(
        '/student',
        queryParameters: queryParameters,
      );

      return StudentsResponse.fromJson(response.data['data']);
    } catch (e) {
      rethrow;
    }
  }

  Future<Student> getStudentDetail() async {
    try {
      final studentId = await getStudentId();

      final response = await http().get('/student/$studentId');

      return Student.fromJson(response.data['data']['student']);
    } catch (err) {
      rethrow;
    }
  }
}
