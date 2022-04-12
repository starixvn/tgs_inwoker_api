import 'package:json_annotation/json_annotation.dart';

part 'vip.g.dart';

@JsonSerializable()
class Vip {
  Vip(
      this.birthBenefit,
      this.cardGameRebate,
      this.level,
      this.levelKeepAccumulateBetAmount,
      this.levelKeepAccumulateDeposit,
      this.levelUpAccumulateBetAmount,
      this.levelUpAccumulateDeposit,
      this.liveDealerRebate,
      this.lotteryRebate,
      this.promotionBenefit,
      this.quarterlyBenefit,
      this.slotRebate,
      this.sportsRebate,
      this.virtualSportsRebate);

  double? birthBenefit;
  double? cardGameRebate;
  double? level;
  double? levelKeepAccumulateBetAmount;
  double? levelKeepAccumulateDeposit;
  double? levelUpAccumulateBetAmount;
  double? levelUpAccumulateDeposit;
  double? liveDealerRebate;
  double? lotteryRebate;
  double? promotionBenefit;
  double? quarterlyBenefit;
  double? slotRebate;
  double? sportsRebate;
  double? virtualSportsRebate;

  factory Vip.fromJson(Map<String, dynamic> json) => _$VipFromJson(json);

  Map<String, dynamic> toJson() => _$VipToJson(this);
}
