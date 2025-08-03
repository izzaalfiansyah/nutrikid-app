import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrikid_app/model/login_params/login_params.dart';
import 'package:nutrikid_app/services/auth_service.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState.initial());
  final authService = Modular.get<AuthService>();

  changeParams(LoginParams params) {
    emit(state.copyWith(params: params));
  }

  login() async {
    emit(state.copyWith(isSubmitted: true, errorMessage: ''));

    try {
      final result = await authService.login(state.params);

      if (result) {
        Modular.to.pushReplacementNamed('/home');
        return;
      }

      throw 'error';
    } catch (err) {
      emit(state.copyWith(errorMessage: "Username atau password salah"));
    }

    emit(state.copyWith(isSubmitted: false));
  }
}
