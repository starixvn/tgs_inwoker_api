// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_roulette.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PromotionRoulette _$PromotionRouletteFromJson(Map<String, dynamic> json) =>
    PromotionRoulette(
      json['promotionid'] as String?,
      json['promotiontype'] as String?,
      json['roulettecount'] as int?,
    );

Map<String, dynamic> _$PromotionRouletteToJson(PromotionRoulette instance) =>
    <String, dynamic>{
      'promotionid': instance.id,
      'promotiontype': instance.promotionType,
      'roulettecount': instance.rouletteCount,
    };
