import 'dart:convert';

import 'package:nutrikid_app/entities/school/school.dart';
import 'package:nutrikid_app/shared/dio.dart';
import 'package:nutrikid_app/utils/shared_preferences.dart';

const CURRENT_SCHOOL = 'current_school';

class SchoolService {
  static Future<List<School>> getSchools() async {
    try {
      final result = await http().get('/school');

      print(result);

      return List<School>.from(
        result.data['data']['schools'].map((json) => School.fromJson(json)),
      );
    } catch (err) {
      print(err);
      return <School>[];
    }
  }

  static Future<School?> getCurrentSchool() async {
    try {
      final prefs = await sharedPreferences();
      final schoolJson = prefs.getString(CURRENT_SCHOOL);

      return School.fromJson(jsonDecode(schoolJson!));
    } catch (err) {
      return null;
    }
  }

  static Future<bool> setCurrentSchool(School school) async {
    try {
      final prefs = await sharedPreferences();
      final schoolJson = jsonEncode(school.toJson());

      prefs.setString(CURRENT_SCHOOL, schoolJson);

      return true;
    } catch (err) {
      return false;
    }
  }
}
