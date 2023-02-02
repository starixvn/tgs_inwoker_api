
import 'package:json_annotation/json_annotation.dart';

part 'campaign_details_item.g.dart';

@JsonSerializable()
class CampaignDetailsItem {
  //CampaignDetailsItem();

  CampaignDetailsItem(this.title);

  String? title;

  factory CampaignDetailsItem.fromJson(Map<String, dynamic> json) =>
      _$CampaignDetailsItemFromJson(json);

  Map<String, dynamic> toJson() => _$CampaignDetailsItemToJson(this);
}
