import 'package:shared_preferences/shared_preferences.dart';

Future<SharedPreferences> sharedPreferences() {
  return SharedPreferences.getInstance();
}
