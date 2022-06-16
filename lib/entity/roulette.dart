import 'package:json_annotation/json_annotation.dart';
import 'package:api/entity/localization.dart';

part 'roulette.g.dart';

@JsonSerializable()
class Roulette {
  //Roulette();

  Roulette(this.id, this.itemIndex);

  String? id;
  @JsonKey(name: 'itemindex')
  int? itemIndex;

  factory Roulette.fromJson(Map<String, dynamic> json) => _$RouletteFromJson(json);

  Map<String, dynamic> toJson() => _$RouletteToJson(this);
}
