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
      ..rouletteItems = json['rouletteItems'] as List<dynamic>?;

Map<String, dynamic> _$CampaignDetailsToJson(CampaignDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'bonus': instance.bonus,
      'depositItems': instance.depositItems,
      'rouletteItems': instance.rouletteItems,
    };
