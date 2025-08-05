import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/entities/measurement/measurement.dart';
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

  Future<Measurement> getMeasurementDetail(int id) async {
    try {
      final result = await http().get('/measurement/$id');

      return Measurement.fromJson(result.data['data']['measurement']);
    } catch (err) {
      rethrow;
    }
  }

  Future<bool> deleteMeasurement(int id) async {
    try {
      await http().delete('/measurement/$id');

      return true;
    } catch (err) {
      rethrow;
    }
  }
}
