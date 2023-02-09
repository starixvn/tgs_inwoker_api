// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_changes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BalanceChangesRecord _$BalanceChangesRecordFromJson(
        Map<String, dynamic> json) =>
    BalanceChangesRecord(
      json['amount'] as String?,
      json['id'] as String?,
      json['recordedon'] as String?,
      json['type'] as String?,
    );

Map<String, dynamic> _$BalanceChangesRecordToJson(
        BalanceChangesRecord instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'id': instance.id,
      'recordedon': instance.recordedon,
      'type': instance.type,
    };
