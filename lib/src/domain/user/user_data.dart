import 'package:json_annotation/json_annotation.dart';

part 'user_data.g.dart';

@JsonSerializable(nullable: false)
class UserData {
  String first_name;
  String last_name;
  String image_url;

  UserToken token;

  UserData({this.first_name, this.last_name, this.image_url, this.token});

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
}

@JsonSerializable()
class UserToken{
  String token;
  DateTime expires;

  @JsonKey(ignore: true)
  bool get isExpired => expires == null || DateTime.now().toUtc().millisecondsSinceEpoch > expires.millisecondsSinceEpoch; 

  UserToken({this.token, this.expires});

  factory UserToken.fromJson(Map<String, dynamic> json) => _$UserTokenFromJson(json);
}


