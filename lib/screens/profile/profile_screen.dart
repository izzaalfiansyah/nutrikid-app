import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';
import 'package:nutrikid_app/blocs/profile_cubit/profile_cubit.dart';
import 'package:nutrikid_app/components/button.dart';
import 'package:nutrikid_app/components/change_password_bottom_sheet.dart';
import 'package:nutrikid_app/components/input.dart';
import 'package:nutrikid_app/components/panel.dart';
import 'package:nutrikid_app/shared/variant.dart';
import 'package:nutrikid_app/utils/letter_name.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final profileCubit = Modular.get<ProfileCubit>();

  final nameController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      bloc: Modular.get<AppBloc>(),
      builder: (context, appState) {
        final profile = appState.profile!;

        nameController.text = profile.name;
        phoneController.text = profile.phone;

        return BlocBuilder<ProfileCubit, ProfileState>(
          bloc: Modular.get<ProfileCubit>(),
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                centerTitle: true,
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(1),
                  child: Divider(color: VariantColor.border),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.all(14),
                child: Panel(
                  child: Column(
                    spacing: 14,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: VariantColor.muted.withAlpha(25),
                              radius: 65,
                              child: Text(
                                letterName(profile.name),
                                style: Theme.of(
                                  context,
                                ).textTheme.displaySmall!.copyWith(
                                  color: VariantColor.primary,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(height: 14),
                            Text(
                              profile.email,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        spacing: 10,
                        children: [
                          Input(
                            placeholder: "Nama",
                            controller: nameController,
                          ),
                          Input(
                            placeholder: "Nomor Telepon",
                            controller: phoneController,
                          ),
                        ],
                      ),
                      SizedBox(),
                      Column(
                        spacing: 10,
                        children: [
                          Button(
                            onPressed:
                                state.isLoading
                                    ? null
                                    : () {
                                      profileCubit.updateProfile(
                                        name: nameController.text,
                                        phone: phoneController.text,
                                      );
                                    },
                            full: true,
                            child: Text(
                              'Simpan'.toUpperCase(),
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Button(
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                builder:
                                    (context) => ChangePasswordBottomSheet(),
                              );
                            },
                            full: true,
                            color: Colors.white,
                            child: Text(
                              'Ganti Sandi'.toUpperCase(),
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 80),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
