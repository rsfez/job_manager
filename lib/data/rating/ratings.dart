import 'package:json_annotation/json_annotation.dart';

part 'ratings.g.dart';

@JsonSerializable()
class Ratings {
  @JsonKey(name: 'current')
  final double current;

  @JsonKey(name: 'potential')
  final double potential;

  Ratings({required this.current, required this.potential});

  factory Ratings.fromJson(Map<String, dynamic> json) =>
      _$RatingsFromJson(json);

  factory Ratings.empty() => Ratings(current: 0.0, potential: 0.0);
}
