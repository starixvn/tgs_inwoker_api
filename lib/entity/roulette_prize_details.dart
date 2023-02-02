
import 'package:json_annotation/json_annotation.dart';

part 'roulette_prize_details.g.dart';

@JsonSerializable()
class RoulettePrizeDetails {
  //RoulettePrizeDetails();

  RoulettePrizeDetails(this.title);

  String? title;

  factory RoulettePrizeDetails.fromJson(Map<String, dynamic> json) =>
      _$RoulettePrizeDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$RoulettePrizeDetailsToJson(this);
}
