import 'package:json_annotation/json_annotation.dart';

part 'idr_register_login_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class IdrRegisterLoginResponse<T> {
  IdrRegisterLoginResponse(this.isCompleted, this.nextStepType, this.stepResponse);

  bool? isCompleted;
  String? nextStepType;
  T? stepResponse;

  factory IdrRegisterLoginResponse.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$IdrRegisterLoginResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) => _$IdrRegisterLoginResponseToJson(this, toJsonT);
}
