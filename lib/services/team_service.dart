import 'package:nutrikid_app/entities/team/team.dart';
import 'package:nutrikid_app/shared/dio.dart';

class TeamService {
  static Future<List<Team>> get() async {
    try {
      final result = await http().get('/team');

      return List<Team>.from(
        result.data['data']['teams'].map((json) {
          return Team.fromJson(json);
        }),
      );
    } catch (err) {
      return [];
    }
  }
}
