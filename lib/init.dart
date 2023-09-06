import 'package:api/entity/env_config.dart';
import 'package:mixpanel_flutter/mixpanel_flutter.dart';

late EnvConfig env;

late Mixpanel mixpanel;

class InitData {
  getData(String url, jwtKey, currency, assetUrl, defaultLang) async {
    env = EnvConfig(url, jwtKey, currency, assetUrl, defaultLang);

    mixpanel = await Mixpanel.init("1a61aa796c9652147bf4d602cd58de22", trackAutomaticEvents: true);
  }
}
