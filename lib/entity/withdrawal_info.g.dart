// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdrawal_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WithdrawalInfo _$WithdrawalInfoFromJson(Map<String, dynamic> json) {
  return WithdrawalInfo(
    json['id'] as String,
    _$enumDecode(_$BankTypeEnumMap, json['banktype']),
    json['channelid'] as String,
    json['channelname'] as String,
    json['channelcode'] as String,
    json['methodcode'] as String,
    json['methodid'] as String,
    json['paymentcode'] as String,
    json['paymentid'] as String,
    TransferLimit.fromJson(json['transferlimit'] as Map<String, dynamic>),
    BankExtendedInfo.fromJson(json['extended'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WithdrawalInfoToJson(WithdrawalInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'banktype': _$BankTypeEnumMap[instance.bankType],
      'channelid': instance.channelId,
      'channelname': instance.channelName,
      'channelcode': instance.channelCode,
      'methodcode': instance.methodCode,
      'methodid': instance.methodId,
      'paymentcode': instance.paymentCode,
      'paymentid': instance.paymentId,
      'transferlimit': instance.transferLimit,
      'extended': instance.bankExtendedInfo,
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
  BankType.THIRD_PARTY: 'ThirdParty',
  BankType.FPS: 'FPS',
};
