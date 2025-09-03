import 'package:freezed_annotation/freezed_annotation.dart';

part 'team.freezed.dart';
part 'team.g.dart';

@Freezed(toJson: false)
abstract class Team with _$Team {
  const factory Team({@Default('') String name, @Default('') String image}) =
      _Team;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}
