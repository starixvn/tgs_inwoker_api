import 'package:api/entity/game_type.dart';

class Wallet {
  double? balance;
  String? gpCode;
  String? abbreviation;
  String? title;
  bool isMainWallet;
  GameType? gameType;

  Wallet(this.gpCode, this.title, this.gameType, this.abbreviation,
      {this.isMainWallet = false});
}
