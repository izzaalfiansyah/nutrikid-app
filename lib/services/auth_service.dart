import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';
import 'package:nutrikid_app/entities/profile/profile.dart';
import 'package:nutrikid_app/model/login_params/login_params.dart';
import 'package:nutrikid_app/model/token/token.dart';
import 'package:nutrikid_app/shared/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  Future<void> saveToken(Token token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('access_token', token.accessToken);
    await prefs.setString('refresh_token', token.refreshToken);
  }

  Future<void> deleteToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('access_token');
    await prefs.remove('refresh_token');
  }

  Future<Token> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    final accessToken = prefs.getString('access_token') ?? "";
    final refreshToken = prefs.getString('refresh_token') ?? "";

    return Token(accessToken: accessToken, refreshToken: refreshToken);
  }

  Future<bool> login(LoginParams params) async {
    try {
      final result = await http().post('/login', data: params.toJson());

      if (result.data['data'] != null) {
        final accessToken = result.data['data']['access_token'];
        final refreshToken = result.data['data']['refresh_token'];

        await saveToken(
          Token(accessToken: accessToken, refreshToken: refreshToken),
        );

        Modular.get<AppBloc>().add(AppEvent.loadProfile());

        return true;
      }
    } catch (e) {
      rethrow;
    }

    return false;
  }

  Future<Profile> profile() async {
    try {
      final token = await getToken();
      final accessToken = token.accessToken;

      final result = await http().get('/profile');

      return Profile.fromJson(result.data['data']['profile']);
    } catch (e) {
      rethrow;
    }
  }
}
