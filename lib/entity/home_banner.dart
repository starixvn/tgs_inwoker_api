import 'package:json_annotation/json_annotation.dart';
part 'home_banner.g.dart';
@JsonSerializable()

class HomeBanner {
  //HomeBanner();

  HomeBanner(this.id, this.mobileUrl, this.title);

  @JsonKey(name: 'id')
  String id;
  @JsonKey(name: 'mobileurl')
  String mobileUrl;
  String title;

  factory HomeBanner.fromJson(Map<String, dynamic> json) => _$HomeBannerFromJson(json);
  Map<String, dynamic> toJson() => _$HomeBannerToJson(this);
}
