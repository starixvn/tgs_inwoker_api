import 'package:json_annotation/json_annotation.dart';

part 'deposit_campaign_details.g.dart';

@JsonSerializable()
class DepositCampaignDetails {
  //DepositCampaignDetails();

  DepositCampaignDetails(
    this.depositItems,
    this.rouletteItems,
  );

  @JsonKey(name: "depositItems")
  List? depositItems;
  @JsonKey(name: "rouletteItems")
  List? rouletteItems;

  factory DepositCampaignDetails.fromJson(Map<String, dynamic> json) =>
      _$DepositCampaignDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$DepositCampaignDetailsToJson(this);
}
