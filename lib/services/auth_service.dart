import 'package:nutrikid_app/model/login_params/login_params.dart';
import 'package:nutrikid_app/model/token/token.dart';
import 'package:nutrikid_app/shared/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static Future<void> saveToken(Token token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('access_token', token.accessToken);
    await prefs.setString('refresh_token', token.refreshToken);
  }

  static Future<void> deleteToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('access_token');
    await prefs.remove('refresh_token');
  }

  static getToken() async {
    final prefs = await SharedPreferences.getInstance();
    final accessToken = prefs.getString('access_token') ?? "";
    final refreshToken = prefs.getString('refresh_token') ?? "";

    return Token(accessToken: accessToken, refreshToken: refreshToken);
  }

  static Future<bool> login(LoginParams params) async {
    try {
      final result = await http().post('/login', data: params.toJson());

      if (result.data['data'] != null) {
        final accessToken = result.data['data']['access_token'];
        final refreshToken = result.data['data']['refresh_token'];

        await saveToken(
          Token(accessToken: accessToken, refreshToken: refreshToken),
        );

        return true;
      }
    } catch (e) {
      print(e);
      rethrow;
    }

    return false;
  }
}
