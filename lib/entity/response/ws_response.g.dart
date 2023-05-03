// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ws_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WsResponse _$WsResponseFromJson(Map<String, dynamic> json) => WsResponse(
      json['payload'] == null
          ? null
          : DepositPayload.fromJson(json['payload'] as Map<String, dynamic>),
      json['type'] as String?,
    );

Map<String, dynamic> _$WsResponseToJson(WsResponse instance) =>
    <String, dynamic>{
      'payload': instance.payload,
      'type': instance.type,
    };
