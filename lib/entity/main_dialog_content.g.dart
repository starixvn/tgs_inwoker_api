// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_dialog_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainDialogContent _$MainDialogContentFromJson(Map<String, dynamic> json) =>
    MainDialogContent(
      json['subject'] as String?,
      json['content'] as String?,
      json['from'] as int?,
      json['to'] as int?,
      json['localization'] == null
          ? null
          : Localization.fromJson(json['localization'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MainDialogContentToJson(MainDialogContent instance) =>
    <String, dynamic>{
      'subject': instance.subject,
      'content': instance.content,
      'from': instance.from,
      'to': instance.to,
      'localization': instance.localization,
    };
