// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'affiliate_rebate_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AffiliateRebateDetails _$AffiliateRebateDetailsFromJson(
        Map<String, dynamic> json) =>
    AffiliateRebateDetails(
      json['rank'] as int?,
      $enumDecodeNullable(_$AffiliateGameTypeEnumMap, json['allagentgametype']),
      (json['turnover'] as num?)?.toDouble(),
      json['activenumber'] as int?,
      (json['rebatepercentage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AffiliateRebateDetailsToJson(
        AffiliateRebateDetails instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'allagentgametype': _$AffiliateGameTypeEnumMap[instance.allAgentGameType],
      'turnover': instance.turnover,
      'activenumber': instance.activeNumber,
      'rebatepercentage': instance.rebatePercentage,
    };

const _$AffiliateGameTypeEnumMap = {
  AffiliateGameType.Sportsbook: 1,
  AffiliateGameType.VirtualSports: 2,
  AffiliateGameType.LiveDealer: 5,
  AffiliateGameType.CardGame: 7,
  AffiliateGameType.Lottery: 13,
  AffiliateGameType.EGame: 15,
};
