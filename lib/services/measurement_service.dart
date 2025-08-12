import 'dart:convert';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';
import 'package:nutrikid_app/entities/measurement/measurement.dart';
import 'package:nutrikid_app/entities/measurement_suggestion/measurement_suggestion.dart';
import 'package:nutrikid_app/entities/z_score/z_score.dart';
import 'package:nutrikid_app/model/measurements_response/measurements_response.dart';
import 'package:nutrikid_app/services/student_service.dart';
import 'package:nutrikid_app/shared/dio.dart';
import 'package:nutrikid_app/utils/shared_preferences.dart';

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

  static Future<List<ZScore>> getMeasurementZScores({
    required String gender,
  }) async {
    Future<List<ZScore>> getZScore(String gender) async {
      final prefs = await sharedPreferences();
      final DEFAULT_MALE_ZSCORES = "default-male-zscores";
      final DEFAULT_FEMALE_ZSCORES = "default-female-zscores";

      final key = gender == "l" ? DEFAULT_MALE_ZSCORES : DEFAULT_FEMALE_ZSCORES;

      final encodedZScores = prefs.getString(key);

      if (encodedZScores != null) {
        return List<ZScore>.from(
          jsonDecode(encodedZScores).map((z) {
            return ZScore.fromJson(z);
          }),
        );
      }

      final result = await http().get(
        '/default-zscore',
        queryParameters: {"gender": gender},
      );

      final zScores = List<ZScore>.from(
        result.data['data']['z_scores'].map((z) {
          return ZScore.fromJson(z);
        }),
      );

      prefs.setString(key, jsonEncode(zScores.map((z) => z.toJson()).toList()));

      return zScores;
    }

    try {
      final zScore = await getZScore("l");

      return zScore;
    } catch (err) {
      print(err);
      rethrow;
    }
  }
}
