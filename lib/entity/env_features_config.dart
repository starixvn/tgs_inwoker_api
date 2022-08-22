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
    this.phonePrefix,
    this.homePageDisplayBalance,
    this.onlineUser,
    this.backgroundMusic,
  );

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
  @JsonKey(name: "OnlineUser")
  bool? onlineUser;
  @JsonKey(name: "BackgroundMusic")
  bool? backgroundMusic;
  @JsonKey(name: "CustomDepositInput")
  bool? customDepositInput;
  @JsonKey(name: "AddCard_InputAddFPS")
  bool? addCardInputAddFPS;
  @JsonKey(name: "Deposit_RemoveName")
  bool? depositRemoveName;
  @JsonKey(name: "DepositNotification")
  bool? depositNotification;
  @JsonKey(name: "AddCard_HideChannel")
  bool? addCardHideChannel;
  @JsonKey(name: "AddCard_BankDropdown")
  bool? addCardBankDropDown;
  @JsonKey(name: "Deposit_CustomBankNameTranslation")
  bool? depositCustomBankNameTranslation;
  @JsonKey(name: "Deposit_AddTips")
  bool? depositAddTips;
  @JsonKey(name: "AddCard_DisplayGCash")
  bool? addCardDisplayGCash;
  @JsonKey(name: "NavigateToAddCard")
  bool? navigateToAddCard;
  @JsonKey(name: "AddCard_NotAllowedEditDelete")
  bool? addCardNotAllowedEditDelete;
  @JsonKey(name: "Profile_NotAllowChangePhone")
  bool? profileNotAllowChangePhone;
  @JsonKey(name: "Deposit_AutofillFirstCard")
  bool? depositAutoFillFirstCard;
  @JsonKey(name: "AddCard_MaximumCardAllowed")
  int? addCardMaximumCardAllowed;
  @JsonKey(name: "AddCard_DisableCreateUpdateDelete")
  bool? addCardDisableCreateUpdateDelete;
  @JsonKey(name: "PopupPromotion")
  bool? popupPromotion;
  @JsonKey(name: "T9_CustomHome")
  bool? t9CustomHome;
  @JsonKey(name: "CustomMessaging")
  List<String>? customMessaging;
  @JsonKey(name: "HomePage_Animated")
  bool? homePageAnimated;
  @JsonKey(name: "Report_ShowRoundsTotal")
  bool? reportShowRoundsTotal;
  @JsonKey(name: "AddCard_HideCertainField")
  bool? addCardHideCertainField;
  @JsonKey(name: "Withdrawal_USDT_ExchangeRate")
  double? withdrawalUSDTExchangeRate;
  @JsonKey(name: "Register_ShowPhone")
  bool? registerShowPhone;
  @JsonKey(name: "Profile_DisableEditPhone")
  bool? profileDisableEditPhone;
  @JsonKey(name: "HomePage_DisplayVIP")
  bool? homePageDisplayVIP;
  @JsonKey(name: "Profile_DisableVerifyPhone")
  bool? profileDisableVerifyPhone;
  @JsonKey(name: "MenuItem_Sorting_PISO")
  bool? menuItemSortingPISO;
  @JsonKey(name: "HomePage_PromoRoulette")
  bool? homePagePromoRoulette;
  @JsonKey(name: "Register_ShowEmail")
  bool? registerShowEmail;
  @JsonKey(name: "Register_CustomFlow_IDR")
  bool? idrRegisterCustomFlow;
  @JsonKey(name: "NewTransferUI")
  bool? newTransferUI;
  @JsonKey(name: "PromoRoulette_SMSVerification")
  bool? promoRouletteSMSVerification;
  @JsonKey(name: "Maintenance_Detail")
  Map<String, String>? maintenanceDetail;
  @JsonKey(name: "AddCard_Bank_Custom_IDR")
  bool? addCardBankCustomIdr;
  @JsonKey(name: "ForcedVerification")
  bool? forcedVerification;
  @JsonKey(name: "AddCard_EWalletCustoms")
  bool? addCardEWalletCustom;
  @JsonKey(name: "MAX_PHONE_LENGTH")
  int? maxPhoneLength;
  @JsonKey(name: "MergeEVORTNT")
  bool? mergeEVORTNT;
  @JsonKey(name: "HideMarquee")
  bool? hideMarquee;

  factory EnvFeaturesConfig.fromJson(Map<String, dynamic> json) =>
      _$EnvFeaturesConfigFromJson(json);

  Map<String, dynamic> toJson() => _$EnvFeaturesConfigToJson(this);
}
