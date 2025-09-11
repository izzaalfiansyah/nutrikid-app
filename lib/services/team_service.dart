import 'package:nutrikid_app/entities/team/team.dart';
import 'package:nutrikid_app/shared/dio.dart';

class TeamResponse {
  final List<Team> teams;
  final Team? leader;

  TeamResponse({required this.teams, this.leader});
}

class TeamService {
  static Future<TeamResponse> get() async {
    try {
      final result = await http().get('/team');

      final teams = List<Team>.from(
        result.data['data']['teams'].map((json) {
          return Team.fromJson(json);
        }),
      );
      final leader = Team.fromJson(result.data['data']['leader']);

      return TeamResponse(teams: teams, leader: leader);
    } catch (err) {
      return TeamResponse(teams: []);
    }
  }
}
