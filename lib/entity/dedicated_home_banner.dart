import 'package:json_annotation/json_annotation.dart';
import 'package:api/entity/localization.dart';

part 'dedicated_home_banner.g.dart';

@JsonSerializable()
class DedicatedHomeBanner {
  //DedicatedHomeBanner();

  DedicatedHomeBanner(this.web, this.wap);
  
  @JsonKey(name: 'web')
  String? web;
  @JsonKey(name: 'wap')
  String? wap;

  factory DedicatedHomeBanner.fromJson(Map<String, dynamic> json) => _$DedicatedHomeBannerFromJson(json);

  Map<String, dynamic> toJson() => _$DedicatedHomeBannerToJson(this);
}
