// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roulette_history_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouletteHistoryRecord _$RouletteHistoryRecordFromJson(
        Map<String, dynamic> json) =>
    RouletteHistoryRecord(
      json['id'] as String?,
      json['itemindex'] as int?,
      json['createdon'] as String?,
      json['date'] as String?,
    );

Map<String, dynamic> _$RouletteHistoryRecordToJson(
        RouletteHistoryRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'itemindex': instance.itemIndex,
      'createdon': instance.createdOn,
      'date': instance.date,
    };
