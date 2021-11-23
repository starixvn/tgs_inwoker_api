import 'package:api/entity/bank_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bank_detail.g.dart';

@JsonSerializable()
class BankDetail {
  //BankDetail();
  BankDetail(this.address, this.bankAccount);

  String? address;
  String? bankAccount;

  factory BankDetail.fromJson(Map<String, dynamic> json) => _$BankDetailFromJson(json);

  Map<String, dynamic> toJson() => _$BankDetailToJson(this);
}
