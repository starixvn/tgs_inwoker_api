import 'package:api/entity/deposit_dialog_content.dart';
import 'package:api/entity/main_dialog_content.dart';
import 'package:api/entity/marquees.dart';
import 'package:json_annotation/json_annotation.dart';

part 'announcement.g.dart';

@JsonSerializable()
class Announcement {
  //Announcement();

  Announcement(this.deposit, this.main, this.marquees);

  @JsonKey(name: "deposits")
  List<DepositDialogContent> deposit;
  @JsonKey(name: "mains")
  List<MainDialogContent> main;
  List<Marquees> marquees;

  factory Announcement.fromJson(Map<String, dynamic> json) => _$AnnouncementFromJson(json);

  Map<String, dynamic> toJson() => _$AnnouncementToJson(this);
}
