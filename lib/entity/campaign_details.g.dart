// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CampaignDetails _$CampaignDetailsFromJson(Map<String, dynamic> json) =>
    CampaignDetails(
      json['id'] as String?,
      json['title'] as String?,
      json['bonus'] as int?,
    )
      ..depositItems = json['depositItems'] as List<dynamic>?
      ..rouletteItems = (json['rouletteItems'] as List<dynamic>?)
          ?.map((e) => CampaignDetailsItem.fromJson(e as Map<String, dynamic>))
          .toList()
      ..depositMinimumLimit = json['depositMinimumLimit'] as int?
      ..bonusAmountLimit = json['bonusAmountLimit'] as int?
      ..percentage = json['percentage'] as int?
      ..turnoverMultiple = json['turnoverMultiple'] as int?;

Map<String, dynamic> _$CampaignDetailsToJson(CampaignDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'bonus': instance.bonus,
      'depositItems': instance.depositItems,
      'rouletteItems': instance.rouletteItems,
      'depositMinimumLimit': instance.depositMinimumLimit,
      'bonusAmountLimit': instance.bonusAmountLimit,
      'percentage': instance.percentage,
      'turnoverMultiple': instance.turnoverMultiple,
    };
