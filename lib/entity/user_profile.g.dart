// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => UserProfile(
      json['username'] as String?,
      json['realname'] as String?,
      json['phone'] as String?,
      json['email'] as String?,
      json['qq'] as String?,
      json['wechat'] as String?,
      json['issetpaypassword'] as bool?,
      json['identityauthentication'] as bool?,
      json['viplevel'] as int?,
      json['playercode'] as String?,
    )
      ..identityFormStatus = $enumDecodeNullable(
          _$IdentityStatusEnumMap, json['identityformstatus'])
      ..identityFormId = json['identityformid'] as String?
      ..facebookMessenger = json['facebookmessenger'] as String?
      ..line = json['line'] as String?
      ..viber = json['viber'] as String?
      ..telegram = json['telegram'] as String?
      ..whatsapp = json['whatsapp'] as String?;

Map<String, dynamic> _$UserProfileToJson(UserProfile instance) =>
    <String, dynamic>{
      'username': instance.username,
      'realname': instance.realname,
      'phone': instance.phone,
      'email': instance.email,
      'qq': instance.qq,
      'wechat': instance.wechat,
      'issetpaypassword': instance.isSetPayPassword,
      'identityauthentication': instance.identityAuthentication,
      'viplevel': instance.vipLevel,
      'playercode': instance.playerCode,
      'identityformstatus':
          _$IdentityStatusEnumMap[instance.identityFormStatus],
      'identityformid': instance.identityFormId,
      'facebookmessenger': instance.facebookMessenger,
      'line': instance.line,
      'viber': instance.viber,
      'telegram': instance.telegram,
      'whatsapp': instance.whatsapp,
    };

const _$IdentityStatusEnumMap = {
  IdentityStatus.WaitingVerify: 0,
  IdentityStatus.Approve: 1,
  IdentityStatus.Reject: 2,
};
