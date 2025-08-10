import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:nutrikid_app/blocs/login_cubit/login_cubit.dart';
import 'package:nutrikid_app/components/button.dart';
import 'package:nutrikid_app/components/input.dart';
import 'package:nutrikid_app/shared/size-config.dart';
import 'package:nutrikid_app/shared/variant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginCubit = Modular.get<LoginCubit>();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 8,
            child: SafeArea(
              child: IconButton(
                onPressed: () {
                  Modular.to.pop();
                },
                icon: Icon(LucideIcons.arrowLeft, size: 24),
              ),
            ),
          ),
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
                          onChanged: (value) {
                            loginCubit.changeParams(
                              state.params.copyWith(username: value),
                            );
                          },
                        ),
                        Input(
                          placeholder: "Password",
                          isPassword: true,
                          onChanged: (value) {
                            loginCubit.changeParams(
                              state.params.copyWith(password: value),
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
                        'Jika anda lupa password, hubungi admin',
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
