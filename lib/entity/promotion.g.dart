// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Promotion _$PromotionFromJson(Map<String, dynamic> json) => Promotion(
      json['id'] as String?,
      json['name'] as String?,
      json['from'] as String?,
      json['to'] as String?,
      (json['vipLevels'] as List<dynamic>?)?.map((e) => e as int).toList(),
      json['localization'] == null
          ? null
          : Localization.fromJson(json['localization'] as Map<String, dynamic>),
      json['mobileBanner'] as String?,
      json['content'] as String?,
      json['terms'] as String?,
    )
      ..promotionType = json['promotionType'] as String?
      ..campaignDetails = json['campaignDetail'] == null
          ? null
          : ListResponse<CampaignDetails>.fromJson(
              json['campaignDetail'] as Map<String, dynamic>,
              (value) =>
                  CampaignDetails.fromJson(value as Map<String, dynamic>));

Map<String, dynamic> _$PromotionToJson(Promotion instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'from': instance.from,
      'to': instance.to,
      'vipLevels': instance.vipLevels,
      'localization': instance.localization,
      'mobileBanner': instance.mobileBanner,
      'content': instance.content,
      'terms': instance.terms,
      'promotionType': instance.promotionType,
      'campaignDetail': instance.campaignDetails?.toJson(
        (value) => value,
      ),
    };
