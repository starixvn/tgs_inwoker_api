import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:api/localizations/language_provider.dart';

enum IdentityStatus {
  @JsonValue(0)
  WaitingVerify,
  @JsonValue(1)
  Approve,
  @JsonValue(2)
  Reject
}

extension IdentityStatusExtension on IdentityStatus {
/*  String getName(BuildContext context) {
    switch (this) {
      case IdentityStatus.WaitingPayment:
        return getTranslatedText(context, "waiting_payment");
      case IdentityStatus.Review:
        return getTranslatedText(context, "review");
      case IdentityStatus.Approved:
        return getTranslatedText(context, "approved");
      case IdentityStatus.Rejected:
        return getTranslatedText(context, "rejected");
      case IdentityStatus.WaitingPaid:
        return getTranslatedText(context, "waiting_paid");
      case IdentityStatus.Paid:
        return getTranslatedText(context, "paid");
      case IdentityStatus.All:
        return getTranslatedText(context, "all");
      default:
        return "";
    }
  }*/

  int getJson() {
    switch (this) {
      case IdentityStatus.WaitingVerify:
        return 0;
      case IdentityStatus.Approve:
        return 1;
      case IdentityStatus.Reject:
        return 2;
      default:
        return 0;
    }
  }

  getTranslatedText(BuildContext context, String key) => LanguageProvider().getTranslated(context, key);
}
