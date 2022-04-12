import 'package:api/entity/bank_detail.dart';
import 'package:api/entity/bank_type.dart';
import 'package:api/entity/transfer_limit.dart';
import 'package:json_annotation/json_annotation.dart';
part 'bank_card.g.dart';

@JsonSerializable()

class BankCard {
  //BankCard();

  BankCard(this.id, this.paymentChannelId, this.bankType, this.bankDetail);

  String? id;
  @JsonKey(name: "paymentchannelid")
  String? paymentChannelId;
  @JsonKey(name: "banktype")
  BankType? bankType;
  @JsonKey(name: "detail")
  BankDetail? bankDetail;
  TransferLimit? transferLimit;

  factory BankCard.fromJson(Map<String, dynamic> json) => _$BankCardFromJson(json);
  Map<String, dynamic> toJson() => _$BankCardToJson(this);

}