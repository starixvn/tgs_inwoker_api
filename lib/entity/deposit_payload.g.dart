// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deposit_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepositPayload _$DepositPayloadFromJson(Map<String, dynamic> json) =>
    DepositPayload(
      (json['amount'] as num?)?.toDouble(),
      json['brandPaymentId'] as String?,
      json['formId'] as String?,
      json['orderNo'] as String?,
      json['paymentMethod'] as String?,
      json['status'] as int?,
      json['updatedOn'] as String?,
    );

Map<String, dynamic> _$DepositPayloadToJson(DepositPayload instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'brandPaymentId': instance.brandPaymentId,
      'formId': instance.formId,
      'orderNo': instance.orderNo,
      'paymentMethod': instance.paymentMethod,
      'status': instance.status,
      'updatedOn': instance.updatedOn,
    };
