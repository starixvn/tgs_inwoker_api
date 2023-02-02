import 'package:api/entity/bank_detail.dart';
import 'package:api/entity/bank_type.dart';
import 'package:api/entity/campaign_details_item.dart';
import 'package:api/entity/transfer_limit.dart';
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
  List<CampaignDetailsItem>? rouletteItems;
  @JsonKey(name: "depositMinimumLimit")
  int? depositMinimumLimit;
  @JsonKey(name: "bonusAmountLimit")
  int? bonusAmountLimit;
  @JsonKey(name: "percentage")
  int? percentage;
  @JsonKey(name: "turnoverMultiple")
  int? turnoverMultiple;

  factory CampaignDetails.fromJson(Map<String, dynamic> json) =>
      _$CampaignDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$CampaignDetailsToJson(this);
}
