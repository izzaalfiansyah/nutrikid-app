import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';
import 'package:nutrikid_app/entities/profile/profile.dart';
import 'package:nutrikid_app/model/login_params/login_params.dart';
import 'package:nutrikid_app/model/token/token.dart';
import 'package:nutrikid_app/shared/dio.dart';
import 'package:nutrikid_app/utils/shared_preferences.dart';

const ACCESS_TOKEN = 'access_token';
const REFRESH_TOKEN = 'refresh_token';
const AUTH_USERNAME = 'auth_username';
const AUTH_PASSWORD = 'auth_password';

class AuthService {
  Future<void> saveToken(Token token) async {
    final prefs = await sharedPreferences();
    await prefs.setString(ACCESS_TOKEN, token.accessToken);
    await prefs.setString(REFRESH_TOKEN, token.refreshToken);
  }

  Future<void> deleteToken() async {
    final prefs = await sharedPreferences();
    await prefs.remove(ACCESS_TOKEN);
    await prefs.remove(REFRESH_TOKEN);
  }

  Future<Token> getToken() async {
    final prefs = await sharedPreferences();
    final accessToken = prefs.getString(ACCESS_TOKEN) ?? "";
    final refreshToken = prefs.getString(REFRESH_TOKEN) ?? "";

    return Token(accessToken: accessToken, refreshToken: refreshToken);
  }

  Future setUsernameAndPasswordSaved({
    required String username,
    required String password,
  }) async {
    final prefs = await sharedPreferences();
    prefs.setString(AUTH_USERNAME, username);
    prefs.setString(AUTH_PASSWORD, password);
  }

  Future<List<String>> getUsernameAndPasswordSaved() async {
    final prefs = await sharedPreferences();
    final username = prefs.getString(AUTH_USERNAME);
    final password = prefs.getString(AUTH_PASSWORD);

    return [username ?? "", password ?? ""];
  }

  Future<Token?> login(LoginParams params) async {
    try {
      final result = await http().post('/login', data: params.toJson());

      if (result.data['data'] != null) {
        final accessToken = result.data['data']['access_token'];
        final refreshToken = result.data['data']['refresh_token'];

        final token = Token(
          accessToken: accessToken,
          refreshToken: refreshToken,
        );

        await saveToken(token);

        await setUsernameAndPasswordSaved(
          username: params.username,
          password: params.password,
        );

        Modular.get<AppBloc>().add(AppEvent.loadProfile());

        return token;
      }
    } catch (e) {
      rethrow;
    }

    return null;
  }

  Future<Token?> refreshToken() async {
    try {
      final token = await getToken();

      if (token.refreshToken.isEmpty) {
        return null;
      }

      final result = await http().post(
        '/refresh-token',
        data: {'refresh_token': token.refreshToken},
      );

      final newAccessToken = result.data['data']['access_token'];
      final newRefreshToken = result.data['data']['refresh_token'];

      final newToken = Token(
        accessToken: newAccessToken,
        refreshToken: newRefreshToken,
      );

      await saveToken(newToken);

      return token;
    } catch (err) {
      rethrow;
    }
  }

  Future<Profile> profile() async {
    try {
      final result = await http().get('/profile');

      return Profile.fromJson(result.data['data']['profile']);
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> updateProfile({
    required String name,
    required String phone,
  }) async {
    try {
      final result = await http().post(
        '/profile',
        data: {"name": name, "phone": phone},
      );

      return true;
    } catch (err) {
      rethrow;
    }
  }

  Future<bool> updatePassword({required String password}) async {
    try {
      final result = await http().post(
        '/profile/change-password',
        data: {"password": password},
      );

      return true;
    } catch (err) {
      rethrow;
    }
  }
}
