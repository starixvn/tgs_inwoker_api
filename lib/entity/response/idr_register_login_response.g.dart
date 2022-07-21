// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'idr_register_login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IdrRegisterLoginResponse<T> _$IdrRegisterLoginResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    IdrRegisterLoginResponse<T>(
      json['isCompleted'] as bool?,
      json['nextStepType'] as String?,
      _$nullableGenericFromJson(json['stepResponse'], fromJsonT),
    );

Map<String, dynamic> _$IdrRegisterLoginResponseToJson<T>(
  IdrRegisterLoginResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'isCompleted': instance.isCompleted,
      'nextStepType': instance.nextStepType,
      'stepResponse': _$nullableGenericToJson(instance.stepResponse, toJsonT),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
