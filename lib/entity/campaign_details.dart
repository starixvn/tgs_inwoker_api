import 'package:json_annotation/json_annotation.dart';

part 'campaign_details.g.dart';

@JsonSerializable()
class CampaignDetails {
  //CampaignDetails();

  CampaignDetails(this.id, this.title, this.bonus);

  String? id;
  String? title;
  int? bonus;
  @JsonKey(name: "depositItems")
  List? depositItems;
  @JsonKey(name: "rouletteItems")
  List? rouletteItems;
  @JsonKey(name: "depositMinimumLimit")
  int? depositMinimumLimit;
  @JsonKey(name: "bonusAmountLimit")
  int? bonusAmountLimit;
  @JsonKey(name: "percentage")
  double? percentage;
  @JsonKey(name: "turnoverMultiple")
  int? turnoverMultiple;

  factory CampaignDetails.fromJson(Map<String, dynamic> json) =>
      _$CampaignDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$CampaignDetailsToJson(this);
}
