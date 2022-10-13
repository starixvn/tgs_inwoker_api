import 'package:json_annotation/json_annotation.dart';
part 'check_phone_duplicate_response.g.dart';

@JsonSerializable()
class CheckPhoneDuplicateResponse {
  CheckPhoneDuplicateResponse(this.duplicated);

  @JsonKey(name: 'data')
  bool? duplicated;

  factory CheckPhoneDuplicateResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckPhoneDuplicateResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CheckPhoneDuplicateResponseToJson(this);
}
