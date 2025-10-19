import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/blocs/login_cubit/login_cubit.dart';
import 'package:nutrikid_app/components/button.dart';
import 'package:nutrikid_app/components/input.dart';
import 'package:nutrikid_app/model/login_params/login_params.dart';
import 'package:nutrikid_app/services/auth_service.dart';
import 'package:nutrikid_app/shared/size-config.dart';
import 'package:nutrikid_app/shared/variant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final authService = AuthService();
  final loginCubit = Modular.get<LoginCubit>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  loadUsernameAndPasswordSaved() async {
    final [username, password] =
        await authService.getUsernameAndPasswordSaved();

    loginCubit.changeParams(
      LoginParams(username: username, password: password),
    );

    usernameController.text = username;
    passwordController.text = password;
  }

  @override
  initState() {
    super.initState();

    loadUsernameAndPasswordSaved();
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: BlocBuilder<LoginCubit, LoginState>(
              bloc: loginCubit,
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 20,
                  children: [
                    Column(
                      spacing: 2,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Selamat Datang 👋',
                          style: Theme.of(context).textTheme.titleLarge!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        Text('Masuk ke akun anda untuk memulai sesi!'),
                      ],
                    ),
                    Column(
                      spacing: 14,
                      children: [
                        Input(
                          placeholder: "Username",
                          controller: usernameController,
                          onChanged: (val) {
                            loginCubit.changeParams(
                              state.params.copyWith(username: val),
                            );
                          },
                        ),
                        Input(
                          placeholder: "Password",
                          controller: passwordController,
                          isPassword: true,
                          onChanged: (val) {
                            loginCubit.changeParams(
                              state.params.copyWith(password: val),
                            );
                          },
                        ),
                        if (state.errorMessage.isNotEmpty)
                          Text(
                            state.errorMessage,
                            style: TextStyle(color: VariantColor.destructive),
                          ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Button(
                        full: true,
                        onPressed:
                            state.isSubmitted
                                ? null
                                : () {
                                  loginCubit.login();
                                },
                        child: Text('Login'),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Jika anda lupa password, silahkan hubungi admin.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: VariantColor.muted),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
