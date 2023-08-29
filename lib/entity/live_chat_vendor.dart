import 'package:api/entity/bank_detail.dart';
import 'package:api/entity/bank_type.dart';
import 'package:api/entity/url.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:api/entity/localization.dart';

part 'live_chat_vendor.g.dart';

@JsonSerializable()
class LiveChatVendor {
  //LiveChat();

  LiveChatVendor(this.brand, this.license);

  String? brand;
  String? license;

  factory LiveChatVendor.fromJson(Map<String, dynamic> json) => _$LiveChatVendorFromJson(json);

  Map<String, dynamic> toJson() => _$LiveChatVendorToJson(this);
}
