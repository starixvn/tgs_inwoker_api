import 'package:api/entity/bank_type.dart';
import 'package:api/entity/payment_extended.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:api/entity/transfer_limit.dart';

part 'payment.g.dart';

@JsonSerializable()
class Payment {
  //Payment();

  Payment(
    this.id,
    this.bankType,
    this.channelName,
    this.transferLimit,
    this.paymentId,
    this.paymentCode,
    this.methodId,
    this.methodCode,
    this.order,
    this.qrCode,
  );

  String? id;
  @JsonKey(name: "banktype")
  BankType? bankType;
  @JsonKey(name: "channelname")
  String? channelName;
  @JsonKey(name: "transferlimit")
  TransferLimit? transferLimit;
  @JsonKey(name: "paymentid")
  String? paymentId;
  @JsonKey(name: "paymentcode")
  String? paymentCode;
  @JsonKey(name: "methodid")
  String? methodId;
  @JsonKey(name: "methodcode")
  String? methodCode;
  @JsonKey(name: "displayorder")
  int? order;
  @JsonKey(name: "extended")
  PaymentExtended? qrCode;
  @JsonKey(name: "channelid")
  String? channelId;

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentToJson(this);
}
