import 'package:api/entity/bank_detail.dart';
import 'package:api/entity/bank_type.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:api/entity/localization.dart';
part 'marquees.g.dart';

@JsonSerializable()

class Marquees {
  //Marquees();

  Marquees(this.subject, this.content, this.from, this.to, this.localization);

  String? subject;
  String? content;
  int? from;
  int? to;
  Localization? localization;

  factory Marquees.fromJson(Map<String, dynamic> json) => _$MarqueesFromJson(json);
  Map<String, dynamic> toJson() => _$MarqueesToJson(this);

}