// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Promotion _$PromotionFromJson(Map<String, dynamic> json) {
  return Promotion(
    json['id'] as String,
    json['name'] as String,
    json['from'] as String,
    json['to'] as String,
    json['status'] as int,
    json['promotionType'] as String,
    (json['bonusAmountLimit'] as num).toDouble(),
    (json['amountUsed'] as num).toDouble(),
    json['unlimited'] as bool,
    json['gameType'] as int,
    (json['percentage'] as num).toDouble(),
    (json['totalAmountLimit'] as num).toDouble(),
    (json['turnoverMultiple'] as num).toDouble(),
    (json['gameProviderIds'] as List<dynamic>).map((e) => e as String).toList(),
    (json['vipLevels'] as List<dynamic>).map((e) => e as int).toList(),
    json['createdOn'] as String,
    json['updatedOn'] as String,
    json['createdByUsername'] as String,
    json['updatedByUsername'] as String,
    Localization.fromJson(json['localization'] as Map<String, dynamic>),
    json['mobileBanner'] as String,
    json['content'] as String,
    json['terms'] as String,
  );
}

Map<String, dynamic> _$PromotionToJson(Promotion instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'from': instance.from,
      'to': instance.to,
      'status': instance.status,
      'promotionType': instance.promotionType,
      'bonusAmountLimit': instance.bonusAmountLimit,
      'amountUsed': instance.amountUsed,
      'unlimited': instance.unlimited,
      'gameType': instance.gameType,
      'percentage': instance.percentage,
      'totalAmountLimit': instance.totalAmountLimit,
      'turnoverMultiple': instance.turnoverMultiple,
      'gameProviderIds': instance.gameProviderIds,
      'vipLevels': instance.vipLevels,
      'createdOn': instance.createdOn,
      'updatedOn': instance.updatedOn,
      'createdByUsername': instance.createdByUsername,
      'updatedByUsername': instance.updatedByUsername,
      'localization': instance.localization,
      'mobileBanner': instance.mobileBanner,
      'content': instance.content,
      'terms': instance.terms,
    };
