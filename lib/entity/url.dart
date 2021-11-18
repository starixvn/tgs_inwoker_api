import 'package:api/entity/bank_detail.dart';
import 'package:api/entity/bank_type.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:api/entity/localization.dart';
part 'url.g.dart';

@JsonSerializable()

class Url {
  //Url();

  Url(this.url);

  String url;

  factory Url.fromJson(Map<String, dynamic> json) => _$UrlFromJson(json);
  Map<String, dynamic> toJson() => _$UrlToJson(this);

}