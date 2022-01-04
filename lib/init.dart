import 'package:api/entity/env_config.dart';

late EnvConfig env;
class InitData{
  getData(String url, jwtKey, currency, assetUrl){
   env = EnvConfig(url, jwtKey, currency, assetUrl);
  }
}