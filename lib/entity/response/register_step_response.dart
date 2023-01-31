
import 'package:json_annotation/json_annotation.dart';
part 'register_step_response.g.dart';

@JsonSerializable()

class RegisterStepResponse {
  RegisterStepResponse(this.uid, this.isNew);

  String? uid;
  @JsonKey(name: 'isnew')
  bool? isNew;

  factory RegisterStepResponse.fromJson(Map<String, dynamic> json) => _$RegisterStepResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterStepResponseToJson(this);
}
