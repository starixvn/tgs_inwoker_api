// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return Payment(
    json['id'] as String,
    _$enumDecode(_$BankTypeEnumMap, json['banktype']),
    json['channelname'] as String,
    TransferLimit.fromJson(json['transferlimit'] as Map<String, dynamic>),
    json['paymentid'] as String,
    json['paymentcode'] as String,
    json['methodid'] as String,
    json['methodcode'] as String,
    json['displayorder'] as int,
  );
}

Map<String, dynamic> _$PaymentToJson(Payment instance) => <String, dynamic>{
      'id': instance.id,
      'banktype': _$BankTypeEnumMap[instance.bankType],
      'channelname': instance.channelName,
      'transferlimit': instance.transferLimit,
      'paymentid': instance.paymentId,
      'paymentcode': instance.paymentCode,
      'methodid': instance.methodId,
      'methodcode': instance.methodCode,
      'displayorder': instance.order,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$BankTypeEnumMap = {
  BankType.BANK: 'Bank',
  BankType.CRYPTO: 'Crypto',
};
