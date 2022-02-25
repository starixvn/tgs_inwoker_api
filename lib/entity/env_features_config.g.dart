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
          json['AddCard_NotAllowedEditDelete'] as bool?;

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
    };
