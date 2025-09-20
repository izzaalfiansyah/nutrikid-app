import 'package:nutrikid_app/utils/shared_preferences.dart';

const INTRODUCTION_SHOWN = 'introduction_shown';
const INTRODUCTION_ROLE = 'introduction_role';

class IntroductionService {
  static Future<bool> shown() async {
    final prefs = await sharedPreferences();

    return prefs.getBool(INTRODUCTION_SHOWN) ?? false;
  }

  static Future<void> setShown() async {
    final prefs = await sharedPreferences();

    await prefs.setBool(INTRODUCTION_SHOWN, true);
  }
}
