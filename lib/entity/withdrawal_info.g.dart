// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdrawal_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WithdrawalInfo _$WithdrawalInfoFromJson(Map<String, dynamic> json) =>
    WithdrawalInfo(
      json['id'] as String?,
      json['banktype'] as String?,
      json['channelid'] as String?,
      json['channelname'] as String?,
      json['channelcode'] as String?,
      json['methodcode'] as String?,
      json['methodid'] as String?,
      json['paymentcode'] as String?,
      json['paymentid'] as String?,
      json['transferlimit'] == null
          ? null
          : TransferLimit.fromJson(
              json['transferlimit'] as Map<String, dynamic>),
      json['extended'] == null
          ? null
          : BankExtendedInfo.fromJson(json['extended'] as Map<String, dynamic>),
    )..fees = (json['feepercentile'] as num?)?.toDouble();

Map<String, dynamic> _$WithdrawalInfoToJson(WithdrawalInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'banktype': instance.bankType,
      'channelid': instance.channelId,
      'channelname': instance.channelName,
      'channelcode': instance.channelCode,
      'methodcode': instance.methodCode,
      'methodid': instance.methodId,
      'paymentcode': instance.paymentCode,
      'paymentid': instance.paymentId,
      'transferlimit': instance.transferLimit,
      'extended': instance.bankExtendedInfo,
      'feepercentile': instance.fees,
    };
