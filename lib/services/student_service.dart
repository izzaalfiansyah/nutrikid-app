import 'package:nutrikid_app/model/students_response/students_response.dart';
import 'package:nutrikid_app/shared/dio.dart';

class StudentService {
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
}
