import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Anda yakin?"),
      content: Text("Apakah anda yakin ingin keluar? Sesi anda akan terhapus!"),
      actions: [
        TextButton(
          child: Text("Batal"),
          onPressed: () => Navigator.pop(context, false),
        ),
        TextButton(
          child: Text("Logout"),
          onPressed: () => Modular.get<AppBloc>().add(AppEvent.logout()),
        ),
      ],
    );
  }
}
