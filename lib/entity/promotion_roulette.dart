import 'package:api/entity/campaign_details.dart';
import 'package:api/entity/response/list_response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:api/entity/localization.dart';

part 'promotion_roulette.g.dart';

@JsonSerializable()
class PromotionRoulette {
  //PromotionRoulette();

  PromotionRoulette(this.id, this.promotionType,this.rouletteCount);

  @JsonKey(name: "promotionid")
  String? id;
  @JsonKey(name: "promotiontype")
  String? promotionType;
  @JsonKey(name: "roulettecount")
  int? rouletteCount;

  factory PromotionRoulette.fromJson(Map<String, dynamic> json) => _$PromotionRouletteFromJson(json);

  Map<String, dynamic> toJson() => _$PromotionRouletteToJson(this);
}
