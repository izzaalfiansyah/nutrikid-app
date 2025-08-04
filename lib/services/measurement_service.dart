import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/model/measurements_response/measurements_response.dart';
import 'package:nutrikid_app/services/student_service.dart';
import 'package:nutrikid_app/shared/dio.dart';

class MeasurementService {
  Future<MeasurementsResponse> getMeasurements() async {
    try {
      final studentId = await Modular.get<StudentService>().getStudentId();
      final result = await http().get(
        '/measurement',
        queryParameters: {'student_id': studentId},
      );

      return MeasurementsResponse.fromJson(result.data['data']);
    } catch (err) {
      rethrow;
    }
  }
}
