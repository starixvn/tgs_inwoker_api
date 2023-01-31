import 'package:api/entity/response/register_step_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponse {
  RegisterResponse(this.nextStepType, this.isCompleted, this.stepResponse);

  String? nextStepType;
  bool? isCompleted;
  RegisterStepResponse? stepResponse;

  factory RegisterResponse.fromJson(Map<String, dynamic> json) => _$RegisterResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterResponseToJson(this);
}
