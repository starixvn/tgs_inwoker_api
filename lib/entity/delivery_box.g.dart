// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliveryBox _$DeliveryBoxFromJson(Map<String, dynamic> json) => DeliveryBox(
      json['comeFrom'] as String?,
      json['content'] as String?,
      json['id'] as String?,
      json['receiver'] as String?,
      json['receiverType'] as String?,
      json['sender'] as String?,
      json['sentOn'] as String?,
      json['subject'] as String?,
    );

Map<String, dynamic> _$DeliveryBoxToJson(DeliveryBox instance) =>
    <String, dynamic>{
      'comeFrom': instance.comeFrom,
      'content': instance.content,
      'id': instance.id,
      'receiver': instance.receiver,
      'receiverType': instance.receiverType,
      'sender': instance.sender,
      'sentOn': instance.sentOn,
      'subject': instance.subject,
    };
