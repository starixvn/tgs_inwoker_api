import 'package:api/entity/balance_changes_type.dart';
import 'package:json_annotation/json_annotation.dart';
part 'balance_changes.g.dart';

@JsonSerializable()
class BalanceChanges {
  //TransferReport();

  BalanceChanges(this.amount, this.id, this.recordedon, this.type);
  double? amount;
  String? id;
  String? recordedon;
  String? type;

  factory BalanceChanges.fromJson(Map<String, dynamic> json) =>
      _$BalanceChangesFromJson(json);
  Map<String, dynamic> toJson() => _$BalanceChangesToJson(this);
}
