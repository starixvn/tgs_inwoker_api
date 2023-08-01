import 'package:api/api.dart';
import 'package:api/entity/env_config.dart';
import 'package:api/init.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:api/entity/language.dart';

import 'my_localizations.dart';

class LanguageProvider {
  static LanguageProvider? _singleton;
  List<Language> list = [];
  final contentRepo = ContentRepository.getSingleton();
  Map<String, Language> _languageList = {
    "en-US": Language("en", "English", Locale("en", ''), "en-US", "images/language/ic_lang_en.png"),
    "zh-CN": Language("zh_Hans", "简体", Locale.fromSubtags(languageCode: "zh", scriptCode: "Hans"), "zh-CN",
        "images/language/ic_lang_zh.png"),
    "zh-TW": Language("zh_Hant", "繁體", Locale.fromSubtags(languageCode: "zh", scriptCode: "Hant"), "zh-TW",
        "images/language/ic_lang_zh_tw.png"),
    "th-TH": Language("th-TH", "ไทย", Locale("th", ""), "th-TH", "images/language/ic_lang_th.png"),
    "id-ID": Language("id-ID", "Indonesia", Locale("id", ''), "id-ID", "images/language/ic_lang_id.png"),
    "vi-VN": Language("vi-VN", "Tiếng Việt", Locale("vi", ''), "vi-VN", "images/language/ic_lang_vn.png"),
    "hi-IN": Language("hi-IN", "हिन्दी", Locale("hi", ''), "hi-IN", "images/language/ic_lang_in.png"),
    "ta-IN": Language("ta-IN", "தமிழ்", Locale("ta", ''), "ta-IN", "images/language/ic_lang_in.png"),
  };
  String _brandName = "";
  Locale? _currentLang = null;

  static LanguageProvider getSingleton() {
    if (_singleton == null) {
      _singleton = LanguageProvider();
    }
    return _singleton!;
  }

  LanguageProvider() {}

  init(String brandName) {
    _brandName = brandName;
  }

  refreshLangList() async {
    var languageOptionList = contentRepo.languageOptionList;
    list.clear();
    if (languageOptionList?.isEmpty ?? true) {
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      String? languageCode = _prefs.getString("LANGUAGE_CODE");
      if (languageCode != null) {
        _languageList.forEach((key, value) {
          if (key == languageCode) {
            list.add(value);
            return;
          }
        });
      } else {
        list.add(_languageList[env.defaultLang]!);
      }
    } else {
      languageOptionList!.forEach((languageOption) {
        var code = languageOption.code;
        _languageList.forEach((key, value) {
          if (key == code) {
            list.add(value);
          }
        });
      });
    }
  }

  Future<Locale?> setLocale(Language language) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setString("LANGUAGE_CODE", language.apiCode);
    return _locale(language);
  }

  Future<Locale?> getLocale() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? languageCode = _prefs.getString("LANGUAGE_CODE");
    Locale? currLocale;
    if (languageCode != null) {
      currLocale = _locale(list.singleWhere((e) => e.apiCode == languageCode));
    } else
      currLocale = _locale(list.singleWhere((e) => e.apiCode == env.defaultLang));
    _currentLang = currLocale;
    return currLocale;
  }

  Locale? _locale(Language? language) {
    if (language == null) {
      return null;
    } else {
      return language.locale;
    }
  }

  String? getTranslated(BuildContext context, String? key, {bool isByBrand = false}) {
    if (isByBrand && key != null) {
      String newKey = _brandName + "_" + key;
      String? translatedText = MyLocalizations.of(context)?.translate(newKey);
      if (translatedText != null && translatedText != newKey) return translatedText;
    }
    return MyLocalizations.of(context)?.translate(key) ?? key;
  }

  getCurrentLanguage(Locale _locale) {
    return list.singleWhere((e) => e.locale == _locale);
  }

  isMandarin() {
    return _currentLang == null ? true : _currentLang?.languageCode == "zh";
  }
}
