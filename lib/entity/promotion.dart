import 'package:api/entity/campaign_details.dart';
import 'package:api/entity/response/list_response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:api/entity/localization.dart';

part 'promotion.g.dart';

@JsonSerializable()
class Promotion {
  //Promotion();

  Promotion(
      this.id,
      this.name,
      this.from,
      this.to,
      this.vipLevels,
      this.localization,
      this.mobileBanner,
      this.content,
      this.terms,
      this.order);

  String? id;
  String? name;
  String? from;
  String? to;
  List<int>? vipLevels;
  Map<String, Localization>? localization;
  String? mobileBanner;
  String? content;
  String? terms;
  String? promotionType;
  int? order;
  @JsonKey(name: "campaignDetail")
  ListResponse<CampaignDetails>? campaignDetails;

  factory Promotion.fromJson(Map<String, dynamic> json) =>
      _$PromotionFromJson(json);

  Map<String, dynamic> toJson() => _$PromotionToJson(this);
}
