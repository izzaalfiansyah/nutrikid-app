import 'package:nutrikid_app/entities/student/student.dart';
import 'package:nutrikid_app/model/students_response/students_response.dart';
import 'package:nutrikid_app/shared/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

const CURRENT_STUDENT_ID = 'current_student_id';

class StudentService {
  Future<void> setStudentId(int id) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(CURRENT_STUDENT_ID, id);
  }

  Future<int?> getStudentId() async {
    final prefs = await SharedPreferences.getInstance();
    final studentId = prefs.getInt(CURRENT_STUDENT_ID);

    return studentId;
  }

  Future<StudentsResponse> getStudents() async {
    try {
      final response = await http().get(
        '/student',
        queryParameters: {'limit': 500},
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
