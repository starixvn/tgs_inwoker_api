// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_extended.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentExtended _$PaymentExtendedFromJson(Map<String, dynamic> json) =>
    PaymentExtended()
      ..qrCode = json['qrCode'] as String?
      ..qrCodeFileUrl = json['qrCodeFileUrl'] as String?
      ..name = json['name'] as String?
      ..logo = json['logo'] as String?
      ..bankAccount = json['bankAccount'] as String?
      ..address = json['address'] as String?
      ..email = json['email'] as String?
      ..fpsId = json['fpsId'] as String?
      ..phone = json['phone'] as String?
      ..rate = (json['rate'] as num?)?.toDouble();

Map<String, dynamic> _$PaymentExtendedToJson(PaymentExtended instance) =>
    <String, dynamic>{
      'qrCode': instance.qrCode,
      'qrCodeFileUrl': instance.qrCodeFileUrl,
      'name': instance.name,
      'logo': instance.logo,
      'bankAccount': instance.bankAccount,
      'address': instance.address,
      'email': instance.email,
      'fpsId': instance.fpsId,
      'phone': instance.phone,
      'rate': instance.rate,
    };
