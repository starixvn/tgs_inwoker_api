// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env_features_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnvFeaturesConfig _$EnvFeaturesConfigFromJson(Map<String, dynamic> json) =>
    EnvFeaturesConfig(
      json['SMSVerification'] as bool?,
      json['EmailVerification'] as bool?,
      json['ICVerification'] as bool?,
      json['ICVerificationUpload'] as bool?,
      json['QQWeChat'] as bool?,
      json['SportsHideLogo'] as bool?,
      json['PopupAnnouncement'] as bool?,
      json['Withdrawal_HundredDigit'] as bool?,
      json['Deposit_ManualApplePayHideBankAcc'] as bool?,
      json['AddCard_BankBranch'] as bool?,
      json['AddCard_DisplayFPS'] as bool?,
      json['Deposit_DualPage'] as bool?,
      json['MenuItem_Sorting_HK28'] as bool?,
      json['HomePage_FirstSection6Widget'] as bool?,
      json['GamePage_SpecificBackground'] as bool?,
      json['MenuItem_ShootFish'] as bool?,
      json['HaveDownloadFeature'] as bool?,
      json['DisplayPhone'] as bool?,
      json['CustomVIP'] as bool?,
      json['AddCard_EnglishName'] as bool?,
      json['ChangesNotAllowed'] as bool?,
      json['HaveAffiliateFeature'] as bool?,
      json['PhonePrefix'] as String?,
      json['HomePageDisplayBalance'] as bool?,
      json['OnlineUser'] as bool?,
      json['BackgroundMusic'] as bool?,
    )
      ..customDepositInput = json['CustomDepositInput'] as bool?
      ..addCardInputAddFPS = json['AddCard_InputAddFPS'] as bool?
      ..depositRemoveName = json['Deposit_RemoveName'] as bool?
      ..depositNotification = json['DepositNotification'] as bool?
      ..addCardHideChannel = json['AddCard_HideChannel'] as bool?
      ..addCardBankDropDown = json['AddCard_BankDropdown'] as bool?
      ..depositCustomBankNameTranslation =
          json['Deposit_CustomBankNameTranslation'] as bool?
      ..depositAddTips = json['Deposit_AddTips'] as bool?
      ..addCardDisplayGCash = json['AddCard_DisplayGCash'] as bool?
      ..navigateToAddCard = json['NavigateToAddCard'] as bool?
      ..addCardNotAllowedEditDelete =
          json['AddCard_NotAllowedEditDelete'] as bool?
      ..profileNotAllowChangePhone =
          json['Profile_NotAllowChangePhone'] as bool?
      ..depositAutoFillFirstCard = json['Deposit_AutofillFirstCard'] as bool?
      ..addCardMaximumCardAllowed = json['AddCard_MaximumCardAllowed'] as int?
      ..addCardDisableCreateUpdateDelete =
          json['AddCard_DisableCreateUpdateDelete'] as bool?
      ..popupPromotion = json['PopupPromotion'] as bool?
      ..t9CustomHome = json['T9_CustomHome'] as bool?
      ..customMessaging = (json['CustomMessaging'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList()
      ..homePageAnimated = json['HomePage_Animated'] as bool?
      ..reportShowRoundsTotal = json['Report_ShowRoundsTotal'] as bool?
      ..addCardHideCertainField = json['AddCard_HideCertainField'] as bool?
      ..withdrawalUSDTExchangeRate =
          (json['Withdrawal_USDT_ExchangeRate'] as num?)?.toDouble()
      ..registerShowPhone = json['Register_ShowPhone'] as bool?
      ..profileDisableEditPhone = json['Profile_DisableEditPhone'] as bool?
      ..homePageDisplayVIP = json['HomePage_DisplayVIP'] as bool?
      ..profileDisableVerifyPhone = json['Profile_DisableVerifyPhone'] as bool?
      ..menuItemSortingPISO = json['MenuItem_Sorting_PISO'] as bool?
      ..homePagePromoRoulette = json['HomePage_PromoRoulette'] as bool?
      ..registerShowEmail = json['Register_ShowEmail'] as bool?
      ..idrRegisterCustomFlow = json['Register_CustomFlow_IDR'] as bool?
      ..newTransferUI = json['NewTransferUI'] as bool?;

Map<String, dynamic> _$EnvFeaturesConfigToJson(EnvFeaturesConfig instance) =>
    <String, dynamic>{
      'SMSVerification': instance.smsVerification,
      'EmailVerification': instance.emailVerification,
      'ICVerification': instance.icVerification,
      'ICVerificationUpload': instance.icVerificationUpload,
      'QQWeChat': instance.qqWeChat,
      'SportsHideLogo': instance.sportsHideLogo,
      'PopupAnnouncement': instance.popupAnnouncement,
      'Withdrawal_HundredDigit': instance.withdrawalHundredDigit,
      'Deposit_ManualApplePayHideBankAcc':
          instance.depositManualApplePayHideBankAcc,
      'AddCard_BankBranch': instance.addCardBankBranch,
      'AddCard_DisplayFPS': instance.addCardDisplayFPS,
      'Deposit_DualPage': instance.deposit_DualPage,
      'MenuItem_Sorting_HK28': instance.menuItemSortingHK28,
      'HomePage_FirstSection6Widget': instance.homePageFirstSection6Widget,
      'GamePage_SpecificBackground': instance.gamePageSpecificBackground,
      'MenuItem_ShootFish': instance.menuItemShootFish,
      'HaveDownloadFeature': instance.haveDownloadFeature,
      'DisplayPhone': instance.displayPhone,
      'CustomVIP': instance.customVIP,
      'AddCard_EnglishName': instance.addCardEnglishName,
      'ChangesNotAllowed': instance.changesNotAllowed,
      'HaveAffiliateFeature': instance.haveAffiliateFeature,
      'PhonePrefix': instance.phonePrefix,
      'HomePageDisplayBalance': instance.homePageDisplayBalance,
      'OnlineUser': instance.onlineUser,
      'BackgroundMusic': instance.backgroundMusic,
      'CustomDepositInput': instance.customDepositInput,
      'AddCard_InputAddFPS': instance.addCardInputAddFPS,
      'Deposit_RemoveName': instance.depositRemoveName,
      'DepositNotification': instance.depositNotification,
      'AddCard_HideChannel': instance.addCardHideChannel,
      'AddCard_BankDropdown': instance.addCardBankDropDown,
      'Deposit_CustomBankNameTranslation':
          instance.depositCustomBankNameTranslation,
      'Deposit_AddTips': instance.depositAddTips,
      'AddCard_DisplayGCash': instance.addCardDisplayGCash,
      'NavigateToAddCard': instance.navigateToAddCard,
      'AddCard_NotAllowedEditDelete': instance.addCardNotAllowedEditDelete,
      'Profile_NotAllowChangePhone': instance.profileNotAllowChangePhone,
      'Deposit_AutofillFirstCard': instance.depositAutoFillFirstCard,
      'AddCard_MaximumCardAllowed': instance.addCardMaximumCardAllowed,
      'AddCard_DisableCreateUpdateDelete':
          instance.addCardDisableCreateUpdateDelete,
      'PopupPromotion': instance.popupPromotion,
      'T9_CustomHome': instance.t9CustomHome,
      'CustomMessaging': instance.customMessaging,
      'HomePage_Animated': instance.homePageAnimated,
      'Report_ShowRoundsTotal': instance.reportShowRoundsTotal,
      'AddCard_HideCertainField': instance.addCardHideCertainField,
      'Withdrawal_USDT_ExchangeRate': instance.withdrawalUSDTExchangeRate,
      'Register_ShowPhone': instance.registerShowPhone,
      'Profile_DisableEditPhone': instance.profileDisableEditPhone,
      'HomePage_DisplayVIP': instance.homePageDisplayVIP,
      'Profile_DisableVerifyPhone': instance.profileDisableVerifyPhone,
      'MenuItem_Sorting_PISO': instance.menuItemSortingPISO,
      'HomePage_PromoRoulette': instance.homePagePromoRoulette,
      'Register_ShowEmail': instance.registerShowEmail,
      'Register_CustomFlow_IDR': instance.idrRegisterCustomFlow,
      'NewTransferUI': instance.newTransferUI,
    };
