import 'package:freezed_annotation/freezed_annotation.dart';

part 'z_score.freezed.dart';
part 'z_score.g.dart';

@freezed
abstract class ZScoreRange with _$ZScoreRange {
  const factory ZScoreRange({
    required int z,
    required double min,
    required double max,
  }) = _ZScoreRange;

  factory ZScoreRange.fromJson(Map<String, dynamic> json) =>
      _$ZScoreRangeFromJson(json);
}

@freezed
abstract class ZScore with _$ZScore {
  const factory ZScore({
    required int month,
    @JsonKey(name: "z_scores_range")
    @Default([])
    List<ZScoreRange> zScoresRange,
  }) = _ZScore;

  factory ZScore.fromJson(Map<String, dynamic> json) => _$ZScoreFromJson(json);
}
