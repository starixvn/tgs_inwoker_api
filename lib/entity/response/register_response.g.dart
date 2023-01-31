// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) =>
    RegisterResponse(
      json['nextStepType'] as String?,
      json['isCompleted'] as bool?,
      json['stepResponse'],
    );

Map<String, dynamic> _$RegisterResponseToJson(RegisterResponse instance) =>
    <String, dynamic>{
      'nextStepType': instance.nextStepType,
      'isCompleted': instance.isCompleted,
      'stepResponse': instance.stepResponse,
    };
