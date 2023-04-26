// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankCard _$BankCardFromJson(Map<String, dynamic> json) => BankCard(
      json['id'] as String?,
      json['paymentchannelid'] as String?,
      json['banktype'] as String?,
      json['detail'] == null
          ? null
          : BankDetail.fromJson(json['detail'] as Map<String, dynamic>),
    )
      ..transferLimit = json['transferLimit'] == null
          ? null
          : TransferLimit.fromJson(
              json['transferLimit'] as Map<String, dynamic>)
      ..fees = (json['fees'] as num?)?.toDouble();

Map<String, dynamic> _$BankCardToJson(BankCard instance) => <String, dynamic>{
      'id': instance.id,
      'paymentchannelid': instance.paymentChannelId,
      'banktype': instance.bankType,
      'detail': instance.bankDetail,
      'transferLimit': instance.transferLimit,
      'fees': instance.fees,
    };
