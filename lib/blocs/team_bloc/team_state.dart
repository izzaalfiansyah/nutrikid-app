part of 'team_bloc.dart';

@freezed
abstract class TeamState with _$TeamState {
  const factory TeamState.initial({
    @Default(false) bool isLoading,
    @Default([]) List<Team> teams,
  }) = _TeamState;
}
