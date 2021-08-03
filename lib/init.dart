import 'package:api/entity/env_config.dart';

EnvConfig env;
class InitData{
  getData(String url, jwtKey, currency){
   env = EnvConfig(url, jwtKey, currency);
  }
}