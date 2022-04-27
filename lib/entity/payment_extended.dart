import 'package:api/entity/bank_type.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:api/entity/transfer_limit.dart';
part 'payment_extended.g.dart';

@JsonSerializable()
class PaymentExtended {
  PaymentExtended();

  String? qrCode;
  String? qrCodeFileUrl;

  String? name;
  String? logo;
  String? bankAccount;
  String? address;

  String? email;
  String? fpsId;
  String? phone;

  factory PaymentExtended.fromJson(Map<String, dynamic> json) =>
      _$PaymentExtendedFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentExtendedToJson(this);
}
