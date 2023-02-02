import 'package:api/entity/bank_detail.dart';
import 'package:api/entity/bank_type.dart';
import 'package:api/entity/roulette_prize_details.dart';
import 'package:api/entity/transfer_limit.dart';
import 'package:json_annotation/json_annotation.dart';

part 'roulette_prize.g.dart';

@JsonSerializable()
class RoulettePrize {
  //RoulettePrize();

  RoulettePrize(this.rouletteItems);

  @JsonKey(name: "rouletteitems")
  List<RoulettePrizeDetails>? rouletteItems;


  factory RoulettePrize.fromJson(Map<String, dynamic> json) =>
      _$RoulettePrizeFromJson(json);

  Map<String, dynamic> toJson() => _$RoulettePrizeToJson(this);
}
