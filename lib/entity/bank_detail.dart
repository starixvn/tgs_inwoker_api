import 'package:api/entity/bank_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bank_detail.g.dart';

@JsonSerializable()
class BankDetail {
  //BankDetail();
  BankDetail(this.address, this.bankAccount, this.phone, this.username);

  String? address;
  String? bankAccount;
  String? phone;
  String? username;
  String? name;
  String? bankName;
  String? bankBranch;
  String? IFSCcode;

  factory BankDetail.fromJson(Map<String, dynamic> json) => _$BankDetailFromJson(json);

  Map<String, dynamic> toJson() => _$BankDetailToJson(this);
}
