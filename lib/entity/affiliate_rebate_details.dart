import 'package:json_annotation/json_annotation.dart';
import 'package:api/entity/affiliate_rebate_game_type.dart';
part 'affiliate_rebate_details.g.dart';

@JsonSerializable()
class AffiliateRebateDetails {

  AffiliateRebateDetails(this.rank, this.allAgentGameType, this.turnover,
      this.activeNumber, this.rebatePercentage);

  @JsonKey(name: "rank")
  int? rank;
  @JsonKey(name: "allagentgametype")
  AffiliateGameType? allAgentGameType;
  @JsonKey(name: "turnover")
  double? turnover;
  @JsonKey(name: "activenumber")
  int? activeNumber;
  @JsonKey(name: "rebatepercentage")
  double? rebatePercentage;

  factory AffiliateRebateDetails.fromJson(Map<String, dynamic> json) =>
      _$AffiliateRebateDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$AffiliateRebateDetailsToJson(this);
}
