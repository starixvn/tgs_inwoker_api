import 'package:api/localizations/language_provider.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

enum BankType {
  @JsonValue("Bank")
  BANK,
  @JsonValue("Crypto")
  CRYPTO,
  @JsonValue("ThirdParty")
  THIRD_PARTY,
  @JsonValue("Usdt")
  USDT,
  FPS,
  @JsonValue("EWallet")
  EWALLET,
  @JsonValue("Pulsa")
  PULSA,
}

extension BankTypeExtension on BankType {
  static const json = {
    BankType.BANK: "Bank",
    BankType.CRYPTO: "Crypto",
    BankType.THIRD_PARTY: "ThirdParty",
    BankType.USDT: "Usdt",
    BankType.FPS: "FPS",
    BankType.EWALLET: "EWallet",
    BankType.PULSA: "Pulsa",
  };

  String? get getJson => json[this];

  String getName(BuildContext context) {
    switch (this) {
      case BankType.BANK:
        return getTranslatedText(context, "bank_transfer");
      case BankType.CRYPTO:
        return getTranslatedText(context, "crypto");
      case BankType.THIRD_PARTY:
        return "Third Party";
      case BankType.USDT:
        return "Usdt";
      case BankType.FPS:
        return "FPS";
      case BankType.EWALLET:
        return "E-wallet";
      case BankType.PULSA:
        return "Pulsa";
      default:
        return "";
    }
  }

  getTranslatedText(BuildContext context, String key) => LanguageProvider().getTranslated(context, key);
}
