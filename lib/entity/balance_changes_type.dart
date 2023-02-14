import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

enum TransactionType {
  @JsonValue("Transaction.Rebate")
  Rebate,
  @JsonValue("Transaction.Promotion")
  Promotion,
  @JsonValue("Transaction.PromotionVipLevelUpgrade")
  PromotionVipLevelUpgrade,
}

extension TransactionTypeExtension on TransactionType {
  static const json = {
    TransactionType.Rebate: "Rebate",
    TransactionType.Promotion: "Promotion",
    TransactionType.PromotionVipLevelUpgrade: "PromotionVipLevelUpgrade",
  };

  String? get getJson => json[this];

  String getName(BuildContext context) {
    switch (this) {
      case TransactionType.Rebate:
        return "Rebate";
      case TransactionType.Promotion:
        return "Promotion";
      case TransactionType.PromotionVipLevelUpgrade:
        return "PromotionVipLevelUpgrade";
      default:
        return "";
    }
  }
}
