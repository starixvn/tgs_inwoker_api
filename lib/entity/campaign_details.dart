import 'package:api/entity/bank_detail.dart';
import 'package:api/entity/bank_type.dart';
import 'package:api/entity/transfer_limit.dart';
import 'package:json_annotation/json_annotation.dart';

part 'campaign_details.g.dart';

@JsonSerializable()
class CampaignDetails {
  //CampaignDetails();

  CampaignDetails(this.depositItems, this.rouletteItems);

  List? depositItems;
  List? rouletteItems;

  factory CampaignDetails.fromJson(Map<String, dynamic> json) =>
      _$CampaignDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$CampaignDetailsToJson(this);
}
