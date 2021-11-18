import 'package:json_annotation/json_annotation.dart';
import 'package:api/entity/status.dart';
part 'account_transaction.g.dart';

@JsonSerializable()

class AccountTransaction {
  //AccountTransaction();

  AccountTransaction(this.id, this.createdOn, this.updatedOn, this.status, this.amount, this.canUploadCerts);

  String id;
  @JsonKey(name: 'createdon')
  String createdOn;
  String updatedOn;
  Status status;
  double amount;
  @JsonKey(name: 'canuploadcerts')
  bool canUploadCerts;

  factory AccountTransaction.fromJson(Map<String, dynamic> json) => _$AccountTransactionFromJson(json);
  Map<String, dynamic> toJson() => _$AccountTransactionToJson(this);
}
