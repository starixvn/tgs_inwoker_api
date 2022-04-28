import 'package:api/entity/bank_detail.dart';
import 'package:api/entity/bank_type.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:api/entity/localization.dart';
part 'deposit_dialog_content.g.dart';

@JsonSerializable()

class DepositDialogContent {
  //DepositDialogContent();

  DepositDialogContent(this.subject, this.content, this.from, this.to, this.localization);

  String? subject;
  String? content;
  int? from;
  int? to;
  Localization? localization;

  factory DepositDialogContent.fromJson(Map<String, dynamic> json) => _$DepositDialogContentFromJson(json);
  Map<String, dynamic> toJson() => _$DepositDialogContentToJson(this);

}