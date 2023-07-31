import 'package:json_annotation/json_annotation.dart';
import 'package:api/entity/localization.dart';

part 'delivery_box.g.dart';

@JsonSerializable()
class DeliveryBox {
  //DeliveryBox();

  DeliveryBox(this.comeFrom, this.content, this.id, this.receiver, this.receiverType, this.sender, this.sentOn, this.subject);

  String? comeFrom;
  String? content;
  String? id;
  String? receiver;
  String? receiverType;
  String? sender;
  String? sentOn;
  String? subject;

  factory DeliveryBox.fromJson(Map<String, dynamic> json) => _$DeliveryBoxFromJson(json);

  Map<String, dynamic> toJson() => _$DeliveryBoxToJson(this);
}
