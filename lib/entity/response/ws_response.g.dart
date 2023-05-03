// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ws_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WsResponse _$WsResponseFromJson(Map<String, dynamic> json) => WsResponse(
      json['payload'] == null
          ? null
          : DepositPayload.fromJson(json['payload'] as Map<String, dynamic>),
      json['isRead'] as bool?,
      json['type'] as String?,
    );

Map<String, dynamic> _$WsResponseToJson(WsResponse instance) =>
    <String, dynamic>{
      'payload': instance.payload,
      'isRead': instance.isRead,
      'type': instance.type,
    };
