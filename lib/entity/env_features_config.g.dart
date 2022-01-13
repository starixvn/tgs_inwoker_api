// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env_features_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnvFeaturesConfig _$EnvFeaturesConfigFromJson(Map<String, dynamic> json) =>
    EnvFeaturesConfig(
      json['SMSVerification'] as bool,
      json['EmailVerification'] as bool,
      json['ICVerification'] as bool,
      json['ICVerificationUpload'] as bool,
      json['QQWeChat'] as bool,
      json['SportsHideLogo'] as bool,
      json['PopupAnnouncement'] as bool,
      json['Withdrawal_HundredDigit'] as bool,
      json['Deposit_ManualApplePayHideBankAcc'] as bool,
      json['AddCard_BankBranch'] as bool,
      json['AddCard_DisplayFPS'] as bool,
      json['Deposit_DualPage'] as bool,
      json['MenuItem_Sorting_HK28'] as bool,
      json['HomePage_FirstSection6Widget'] as bool,
      json['GamePage_SpecificBackground'] as bool,
      json['MenuItem_ShootFish'] as bool,
      json['HaveDownloadFeature'] as bool,
      json['DisplayPhone'] as bool,
      json['CustomVIP'] as bool,
      json['AddCard_EnglishName'] as bool,
    );

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
    };
