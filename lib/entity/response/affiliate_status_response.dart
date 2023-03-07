import 'package:json_annotation/json_annotation.dart';
part 'affiliate_status_response.g.dart';

@JsonSerializable()
class AffiliateStatusResponse {
  AffiliateStatusResponse(this.switchOn);

  @JsonKey(name: 'switchon')
  bool? switchOn;

  factory AffiliateStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$AffiliateStatusResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AffiliateStatusResponseToJson(this);
}
