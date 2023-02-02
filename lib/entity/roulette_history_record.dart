import 'package:json_annotation/json_annotation.dart';
import 'package:api/entity/localization.dart';

part 'roulette_history_record.g.dart';

@JsonSerializable()
class RouletteHistoryRecord {
  //Roulette();

  RouletteHistoryRecord(this.id, this.itemIndex, this.createdOn, this.date);

  String? id;
  @JsonKey(name: 'itemindex')
  int? itemIndex;
  @JsonKey(name: 'createdon')
  String? createdOn;
  String? date;

  factory RouletteHistoryRecord.fromJson(Map<String, dynamic> json) => _$RouletteHistoryRecordFromJson(json);

  Map<String, dynamic> toJson() => _$RouletteHistoryRecordToJson(this);
}
