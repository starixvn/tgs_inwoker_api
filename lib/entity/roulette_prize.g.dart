// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roulette_prize.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoulettePrize _$RoulettePrizeFromJson(Map<String, dynamic> json) =>
    RoulettePrize(
      (json['rouletteItems'] as List<dynamic>?)
          ?.map((e) => RoulettePrizeDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RoulettePrizeToJson(RoulettePrize instance) =>
    <String, dynamic>{
      'rouletteItems': instance.rouletteItems,
    };
