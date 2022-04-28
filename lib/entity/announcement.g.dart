// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Announcement _$AnnouncementFromJson(Map<String, dynamic> json) => Announcement(
      (json['deposits'] as List<dynamic>)
          .map((e) => DepositDialogContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['mains'] as List<dynamic>)
          .map((e) => MainDialogContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['marquees'] as List<dynamic>)
          .map((e) => Marquees.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnnouncementToJson(Announcement instance) =>
    <String, dynamic>{
      'deposits': instance.deposit,
      'mains': instance.main,
      'marquees': instance.marquees,
    };
