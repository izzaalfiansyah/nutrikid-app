import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrikid_app/entities/team/team.dart';
import 'package:nutrikid_app/services/team_service.dart';

part 'team_events.dart';
part 'team_state.dart';

part 'team_bloc.freezed.dart';

class TeamBloc extends Bloc<TeamEvent, TeamState> {
  TeamBloc() : super(TeamState.initial()) {
    on<TeamEvent>((event, emit) async {
      if (event is _LoadTeams) {
        emit(state.copyWith(isLoading: true));

        try {
          final teams = await TeamService.get();

          emit(state.copyWith(teams: teams));
        } catch (err) {
          //
        }

        emit(state.copyWith(isLoading: false));
      }
    });
  }
}
