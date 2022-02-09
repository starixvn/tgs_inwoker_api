import 'package:json_annotation/json_annotation.dart';

part 'env_features_config.g.dart';

@JsonSerializable()
class EnvFeaturesConfig {
  //EnvFeaturesConfig();

  EnvFeaturesConfig(
      this.smsVerification,
      this.emailVerification,
      this.icVerification,
      this.icVerificationUpload,
      this.qqWeChat,
      this.sportsHideLogo,
      this.popupAnnouncement,
      this.withdrawalHundredDigit,
      this.depositManualApplePayHideBankAcc,
      this.addCardBankBranch,
      this.addCardDisplayFPS,
      this.deposit_DualPage,
      this.menuItemSortingHK28,
      this.homePageFirstSection6Widget,
      this.gamePageSpecificBackground,
      this.menuItemShootFish,
      this.haveDownloadFeature,
      this.displayPhone,
      this.customVIP,
      this.addCardEnglishName,
      this.changesNotAllowed,
      this.haveAffiliateFeature,
      this.homePageDisplayBalance);

  @JsonKey(name: "SMSVerification")
  bool? smsVerification;
  @JsonKey(name: "EmailVerification")
  bool? emailVerification;
  @JsonKey(name: "ICVerification")
  bool? icVerification;
  @JsonKey(name: "ICVerificationUpload")
  bool? icVerificationUpload;
  @JsonKey(name: "QQWeChat")
  bool? qqWeChat;
  @JsonKey(name: "SportsHideLogo")
  bool? sportsHideLogo;
  @JsonKey(name: "PopupAnnouncement")
  bool? popupAnnouncement;
  @JsonKey(name: "Withdrawal_HundredDigit")
  bool? withdrawalHundredDigit;
  @JsonKey(name: "Deposit_ManualApplePayHideBankAcc")
  bool? depositManualApplePayHideBankAcc;
  @JsonKey(name: "AddCard_BankBranch")
  bool? addCardBankBranch;
  @JsonKey(name: "AddCard_DisplayFPS")
  bool? addCardDisplayFPS;
  @JsonKey(name: "Deposit_DualPage")
  bool? deposit_DualPage;
  @JsonKey(name: "MenuItem_Sorting_HK28")
  bool? menuItemSortingHK28;
  @JsonKey(name: "HomePage_FirstSection6Widget")
  bool? homePageFirstSection6Widget;
  @JsonKey(name: "GamePage_SpecificBackground")
  bool? gamePageSpecificBackground;
  @JsonKey(name: "MenuItem_ShootFish")
  bool? menuItemShootFish;
  @JsonKey(name: "HaveDownloadFeature")
  bool? haveDownloadFeature;
  @JsonKey(name: "DisplayPhone")
  bool? displayPhone;
  @JsonKey(name: "CustomVIP")
  bool? customVIP;
  @JsonKey(name: "AddCard_EnglishName")
  bool? addCardEnglishName;
  @JsonKey(name: "ChangesNotAllowed")
  bool? changesNotAllowed;
  @JsonKey(name: "HaveAffiliateFeature")
  bool? haveAffiliateFeature;
  @JsonKey(name: "PhonePrefix")
  String? phonePrefix;
  @JsonKey(name: "HomePageDisplayBalance")
  bool? homePageDisplayBalance;

  factory EnvFeaturesConfig.fromJson(Map<String, dynamic> json) => _$EnvFeaturesConfigFromJson(json);

  Map<String, dynamic> toJson() => _$EnvFeaturesConfigToJson(this);
}
