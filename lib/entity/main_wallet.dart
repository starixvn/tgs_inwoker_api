import 'package:json_annotation/json_annotation.dart';
part 'main_wallet.g.dart';
@JsonSerializable()

class MainWallet {
  //MainWallet();

  MainWallet(this.main, this.totalBalance);

  double? main;

  double? totalBalance;

  factory MainWallet.fromJson(Map<String, dynamic> json) => _$MainWalletFromJson(json);
  Map<String, dynamic> toJson() => _$MainWalletToJson(this);
}