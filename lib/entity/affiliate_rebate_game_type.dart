import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:api/localizations/language_provider.dart';

enum AffiliateGameType {
  @JsonValue(1)
  Sportsbook,
  @JsonValue(2)
  VirtualSports,
  @JsonValue(5)
  LiveDealer,
  @JsonValue(7)
  CardGame,
  @JsonValue(13)
  Lottery,
  @JsonValue(15)
  EGame,
}

extension AffiliateGameTypeExtension on AffiliateGameType {
  String getName(BuildContext context) {
    switch (this) {
      case AffiliateGameType.Sportsbook:
        return getTranslatedText(context, "affiliate_rebate_sports");
      case AffiliateGameType.VirtualSports:
        return getTranslatedText(context, "affiliate_rebate_virtualsports");
      case AffiliateGameType.LiveDealer:
        return getTranslatedText(context, "affiliate_rebate_livecasino");
      case AffiliateGameType.CardGame:
        return getTranslatedText(context, "affiliate_rebate_qipai");
      case AffiliateGameType.Lottery:
        return getTranslatedText(context, "affiliate_rebate_lottery");
      case AffiliateGameType.EGame:
        return getTranslatedText(context, "affiliate_rebate_e_game");
      default:
        return "";
    }
  }

  static const json = {
    AffiliateGameType.Sportsbook: 1,
    AffiliateGameType.VirtualSports: 2,
    AffiliateGameType.LiveDealer: 5,
    AffiliateGameType.CardGame: 7,
    AffiliateGameType.Lottery: 13,
    AffiliateGameType.EGame: 15,
  };

  int? get getJsonValue => json[this];

  getTranslatedText(BuildContext context, String key,
          {bool isByBrand = false}) =>
      LanguageProvider.getSingleton()
          .getTranslated(context, key, isByBrand: isByBrand);
}
