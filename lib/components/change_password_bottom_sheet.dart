import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/blocs/profile_cubit/profile_cubit.dart';
import 'package:nutrikid_app/components/button.dart';
import 'package:nutrikid_app/components/input.dart';

class ChangePasswordBottomSheet extends StatefulWidget {
  const ChangePasswordBottomSheet({super.key});

  @override
  State<ChangePasswordBottomSheet> createState() =>
      _ChangePasswordBottomSheetState();
}

class _ChangePasswordBottomSheetState extends State<ChangePasswordBottomSheet> {
  final profileCubit = Modular.get<ProfileCubit>();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      bloc: profileCubit,
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.only(top: 30, bottom: 20),
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              spacing: 14,
              children: [
                Text(
                  'Ganti Password',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Input(
                  placeholder: "Password Baru",
                  isPassword: true,
                  controller: passwordController,
                ),
                SizedBox(),
                Button(
                  onPressed:
                      state.isLoading
                          ? null
                          : () {
                            profileCubit.changePassword(
                              password: passwordController.text,
                            );
                          },
                  full: true,
                  child: Text('Simpan'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
