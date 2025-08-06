import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';
import 'package:nutrikid_app/entities/measurement/measurement.dart';
import 'package:nutrikid_app/entities/measurement_suggestion/measurement_suggestion.dart';
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

  Future<bool> addMeasurement({
    required double height,
    required double weight,
  }) async {
    try {
      final student = Modular.get<AppBloc>().state.selectedStudent;
      final studentId = student?.id;
      final studentAge = student?.age;

      final result = await http().post(
        '/measurement',
        data: {
          'student_id': studentId,
          'student_height': height,
          'student_weight': weight,
          'student_age': studentAge,
        },
      );

      return true;
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

  Future<List<MeasurementSuggestion>> getMeasurementSuggestion({
    required int measurementId,
  }) async {
    try {
      final result = await http().get('/measurement/$measurementId/suggestion');

      return List<MeasurementSuggestion>.from(
        result.data['data']['suggestions'].map(
          (json) => MeasurementSuggestion.fromJson(json),
        ),
      );
    } catch (err) {
      return [];
    }
  }

  Future<bool> storeSuggestion({
    required String advice,
    required int measurementId,
  }) async {
    try {
      final result = await http().post(
        '/measurement/$measurementId/suggestion',
        data: {"advice": advice},
      );

      return true;
    } catch (err) {
      rethrow;
    }
  }
}
