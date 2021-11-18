import 'package:json_annotation/json_annotation.dart';
import 'package:api/entity/status.dart';
part 'transfer_transaction.g.dart';

@JsonSerializable()

class TransferTransaction {
  //TransferTransaction();

  TransferTransaction(this.from, this.to, this.amount, this.balanceTime);

  String from;
  String to;
  double amount;
  @JsonKey(name: 'balancetime')
  String balanceTime;

  factory TransferTransaction.fromJson(Map<String, dynamic> json) => _$TransferTransactionFromJson(json);
  Map<String, dynamic> toJson() => _$TransferTransactionToJson(this);
}
