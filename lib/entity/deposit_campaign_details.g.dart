// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deposit_campaign_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepositCampaignDetails _$DepositCampaignDetailsFromJson(
        Map<String, dynamic> json) =>
    DepositCampaignDetails(
      json['depositItems'] as List<dynamic>?,
      json['rouletteItems'] as List<dynamic>?,
    );

Map<String, dynamic> _$DepositCampaignDetailsToJson(
        DepositCampaignDetails instance) =>
    <String, dynamic>{
      'depositItems': instance.depositItems,
      'rouletteItems': instance.rouletteItems,
    };
