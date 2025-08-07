import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';
import 'package:nutrikid_app/services/auth_service.dart';

part 'profile_state.dart';

part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(const ProfileState.initial());

  final appBloc = Modular.get<AppBloc>();
  final authService = Modular.get<AuthService>();

  updateProfile({required String name, required String phone}) async {
    emit(state.copyWith(isLoading: true));

    try {
      final result = await authService.updateProfile(name: name, phone: phone);

      if (result) {
        appBloc.add(
          AppEvent.setProfile(
            appBloc.state.profile!.copyWith(name: name, phone: phone),
          ),
        );
        appBloc.add(AppEvent.showAlert(message: "Profil berhasil disimpan"));
      }
    } catch (err) {
      print(err);
      appBloc.add(
        AppEvent.showAlert(message: "Terjadi kesalahan saat mengubah profil"),
      );
    }

    emit(state.copyWith(isLoading: false));
  }
}
