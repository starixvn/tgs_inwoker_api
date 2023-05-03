import 'package:api/entity/deposit_payload.dart';
import 'package:json_annotation/json_annotation.dart';
part 'ws_response.g.dart';

@JsonSerializable()
class WsResponse {
  WsResponse(this.payload, this.type);

 DepositPayload? payload;

 String? type;

  factory WsResponse.fromJson(Map<String, dynamic> json) =>
      _$WsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$WsResponseToJson(this);
}
