import 'package:api/entity/bank_type.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:api/entity/transfer_limit.dart';
part 'payment_qr_code.g.dart';

@JsonSerializable()

class PaymentQrCode {
  PaymentQrCode();

  String? qrCode;
  String? qrCodeFileUrl;

  String? name;
  String? logo;
  String? bankAccount;


  factory PaymentQrCode.fromJson(Map<String, dynamic> json) => _$PaymentQrCodeFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentQrCodeToJson(this);
}

