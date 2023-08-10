// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station_letter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StationLetter _$StationLetterFromJson(Map<String, dynamic> json) =>
    StationLetter(
      json['id'] as String?,
      json['createon'] as String?,
      json['content'] as String?,
      json['subject'] as String?,
      json['haveRead'] as bool?,
      json['replied'] as bool?,
    )
      ..sender = json['sender'] as String?
      ..sentOn = json['sentOn'] as String?;

Map<String, dynamic> _$StationLetterToJson(StationLetter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createon': instance.createdOn,
      'content': instance.content,
      'subject': instance.subject,
      'haveRead': instance.haveRead,
      'replied': instance.replied,
      'sender': instance.sender,
      'sentOn': instance.sentOn,
    };
