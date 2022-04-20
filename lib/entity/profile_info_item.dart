import 'package:flutter/cupertino.dart';
import 'package:api/localizations/language_provider.dart';

enum ProfileInfoItem {
  REALNAME,
  PHONE_NUMBER,
  EMAIL,
  QQ_NUMBER,
  WECHAT_NUMBER,
  ADDRESS,
  LOGIN_PASSWORD,
  //PAY_PASSWORD,
  //RESET_PAY_PASSWORD,
  MESSENGER,
  TELEGRAM,
  LINE,
  VIBER,
  WHATSAPP,
}

extension ProfileInfoItemExtension on ProfileInfoItem {
  static const name = {
    ProfileInfoItem.REALNAME: "ic_no",
    ProfileInfoItem.PHONE_NUMBER: "phone_number",
    ProfileInfoItem.EMAIL: "email",
    ProfileInfoItem.QQ_NUMBER: "qq_no",
    ProfileInfoItem.WECHAT_NUMBER: "wechat_no",
    // ProfileInfoItem.ADDRESS: "收货地址",
    ProfileInfoItem.LOGIN_PASSWORD: "edit_password",
    //ProfileInfoItem.PAY_PASSWORD: "pay_password",
    //ProfileInfoItem.RESET_PAY_PASSWORD: "reset_pay_password",
    ProfileInfoItem.MESSENGER:"messenger",
    ProfileInfoItem.TELEGRAM:"telegram",
    ProfileInfoItem.LINE:"line",
    ProfileInfoItem.VIBER:"viber",
    ProfileInfoItem.WHATSAPP:"whatsapp",
  };

  static const imagePath = {
    ProfileInfoItem.REALNAME: "images/profile_info/ic_profile_info_name.png",
    ProfileInfoItem.PHONE_NUMBER: "images/profile_info/ic_profile_info_phone.png",
    ProfileInfoItem.EMAIL: "images/profile_info/ic_profile_info_email.png",
    ProfileInfoItem.QQ_NUMBER: "images/profile_info/ic_profile_info_qq.png",
    ProfileInfoItem.WECHAT_NUMBER: "images/profile_info/ic_profile_info_weixin.png",
    //ProfileInfoItem.ADDRESS: "images/profile_info/ic_profile_info_address.png",
    ProfileInfoItem.LOGIN_PASSWORD: "images/profile_info/ic_profile_info_lock.png",
    //ProfileInfoItem.PAY_PASSWORD: "images/profile_info/ic_profile_info_withdraw_password.png",
    //ProfileInfoItem.RESET_PAY_PASSWORD: "images/profile_info/ic_profile_info_withdraw_password.png",
    ProfileInfoItem.MESSENGER: "images/contact/messenger.svg",
    ProfileInfoItem.TELEGRAM: "images/contact/telegram.svg",
    ProfileInfoItem.LINE: "images/contact/line.svg",
    ProfileInfoItem.VIBER: "images/contact/viber.svg",
    ProfileInfoItem.WHATSAPP: "images/contact/whatsapp.svg",
  };

  static const navigationPath = {
    ProfileInfoItem.REALNAME: "real_name_verification",
    ProfileInfoItem.PHONE_NUMBER: "phone_verification",
    ProfileInfoItem.EMAIL: "email_verification",
    ProfileInfoItem.QQ_NUMBER: "qq_account",
    ProfileInfoItem.WECHAT_NUMBER: "wechat",
    // ProfileInfoItem.ADDRESS: "收货地址",
    ProfileInfoItem.LOGIN_PASSWORD: "edit_password",
    //ProfileInfoItem.PAY_PASSWORD: "pay_password",
    //ProfileInfoItem.RESET_PAY_PASSWORD: "reset_pay_password",
    ProfileInfoItem.MESSENGER: "messenger",
    ProfileInfoItem.TELEGRAM: "telegram",
    ProfileInfoItem.LINE: "line",
    ProfileInfoItem.VIBER: "viber",
    ProfileInfoItem.WHATSAPP: "whatsapp",
  };

  String? getDisplayName(BuildContext context) => getTranslatedText(context, name[this]!);

  String? getImagePath() => imagePath[this];

  String? getNavigationPath() => navigationPath[this];

  getTranslatedText(BuildContext context, String key) => LanguageProvider().getTranslated(context, key);
}
