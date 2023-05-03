import 'package:json_annotation/json_annotation.dart';
part 'deposit_payload.g.dart';

@JsonSerializable()
class DepositPayload {
  DepositPayload(
      this.amount, this.brandPaymentId, this.formId, this.orderNo, this.paymentMethod, this.status, this.updatedOn);

  int amount;
  String brandPaymentId;
  String formId;
  String orderNo;
  String paymentMethod;
  String status;
  String updatedOn;

  factory DepositPayload.fromJson(Map<String, dynamic> json) =>
      _$DepositPayloadFromJson(json);
  Map<String, dynamic> toJson() => _$DepositPayloadToJson(this);


}
