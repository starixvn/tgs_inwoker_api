// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_changes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BalanceChanges _$BalanceChangesFromJson(Map<String, dynamic> json) =>
    BalanceChanges(
      (json['amount'] as num?)?.toDouble(),
      json['id'] as String?,
      json['recordedon'] as String?,
      json['type'] as String?,
    );

Map<String, dynamic> _$BalanceChangesToJson(BalanceChanges instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'id': instance.id,
      'recordedon': instance.recordedon,
      'type': instance.type,
    };
