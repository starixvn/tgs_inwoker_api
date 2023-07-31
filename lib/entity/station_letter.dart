import 'package:json_annotation/json_annotation.dart';
import 'package:api/entity/localization.dart';

part 'station_letter.g.dart';

@JsonSerializable()
class StationLetter {
  //StationLetter();

  StationLetter(this.id, this.createdOn, this.content, this.subject, this.haveRead, this.replied);

  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'createon')
  String? createdOn;
  @JsonKey(name: 'content')
  String? content;
  @JsonKey(name: 'subject')
  String? subject;
  bool? haveRead;
  bool? replied;

  factory StationLetter.fromJson(Map<String, dynamic> json) => _$StationLetterFromJson(json);

  Map<String, dynamic> toJson() => _$StationLetterToJson(this);
}
