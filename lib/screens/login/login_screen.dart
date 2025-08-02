import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
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
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
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
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w600),
                ),
                Text('Masuk ke akun anda untuk memulai sesi!'),
              ],
            ),
            Column(
              spacing: 14,
              children: [
                Input(placeholder: "Email"),
                Input(placeholder: "Password"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Button(
                full: true,
                onPressed: () {
                  Modular.to.pushReplacementNamed('/home');
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
        ),
      ),
    );
  }
}
