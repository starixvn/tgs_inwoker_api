import 'package:api/entity/balance_changes_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'balance_changes.g.dart';

@JsonSerializable()
class BalanceChangesRecord {
  BalanceChangesRecord(
    this.amount,
    this.id,
    this.recordedon,
    this.type,
  );

  String? amount;
  String? id;
  String? recordedon;
  String? type;

  factory BalanceChangesRecord.fromJson(Map<String, dynamic> json) =>
      _$BalanceChangesRecordFromJson(json);

  Map<String, dynamic> toJson() => _$BalanceChangesRecordToJson(this);
}
