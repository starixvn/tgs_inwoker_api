import 'package:api/entity/bank_detail.dart';
import 'package:api/entity/bank_type.dart';
import 'package:api/entity/url.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:api/entity/localization.dart';
part 'live_chat.g.dart';

@JsonSerializable()

class LiveChat {
  //LiveChat();

  LiveChat(this.name, this.setting);

  String name;
  Url setting;

  factory LiveChat.fromJson(Map<String, dynamic> json) => _$LiveChatFromJson(json);
  Map<String, dynamic> toJson() => _$LiveChatToJson(this);

}