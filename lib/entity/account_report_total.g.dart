// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_report_total.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountReportTotal _$AccountReportTotalFromJson(Map<String, dynamic> json) =>
    AccountReportTotal(
      (json['betAmount'] as num?)?.toDouble(),
      (json['validBetAmount'] as num?)?.toDouble(),
      (json['winLoss'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AccountReportTotalToJson(AccountReportTotal instance) =>
    <String, dynamic>{
      'betAmount': instance.betAmount,
      'validBetAmount': instance.validBetAmount,
      'winLoss': instance.winLoss,
    };
