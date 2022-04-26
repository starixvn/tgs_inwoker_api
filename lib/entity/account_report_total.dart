import 'package:json_annotation/json_annotation.dart';
part 'account_report_total.g.dart';

@JsonSerializable()
class AccountReportTotal {
  //AccountReport();

  AccountReportTotal(this.betAmount, this.validBetAmount, this.winLoss);

  double? betAmount;
  double? validBetAmount;
  double? winLoss;

  factory AccountReportTotal.fromJson(Map<String, dynamic> json) =>
      _$AccountReportTotalFromJson(json);
  Map<String, dynamic> toJson() => _$AccountReportTotalToJson(this);
}
