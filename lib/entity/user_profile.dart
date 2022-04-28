import 'package:api/entity/identity_status.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user_profile.g.dart';
@JsonSerializable()

class UserProfile {
  //UserProfile();

  UserProfile(this.username, this.realname, this.phone, this.email, this.qq, this.wechat, this.isSetPayPassword,
      this.identityAuthentication, this.vipLevel, this.playerCode);

  String? username;
  String? realname;
  String? phone;
  String? email;
  String? qq;
  String? wechat;
  @JsonKey(name: 'issetpaypassword')
  bool? isSetPayPassword;
  @JsonKey(name: 'identityauthentication')
  bool? identityAuthentication;
  @JsonKey(name: 'viplevel')
  int? vipLevel;
  @JsonKey(name: 'playercode')
  String? playerCode;
  @JsonKey(name: 'identityformstatus')
  IdentityStatus? identityFormStatus;
  @JsonKey(name: 'identityformid')
  String? identityFormId;
  @JsonKey(name: 'facebookmessenger')
  String? facebookMessenger;
  String? line;
  String? viber;
  String? telegram;
  String? whatsapp;
  String? birthdate;

  factory UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);
  Map<String, dynamic> toJson() => _$UserProfileToJson(this);
}