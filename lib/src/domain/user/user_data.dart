import 'package:json_annotation/json_annotation.dart';

part 'user_data.g.dart';

@JsonSerializable(nullable: false)
class UserData {
  String first_name;
  String last_name;
  String image_src;

  List<String> roles;

  UserToken token;

  UserData({this.first_name, this.last_name, this.image_src, this.token, this.roles});

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
  Map<String, dynamic> get toJson => _$UserDataToJson(this);
}

@JsonSerializable()
class UserToken{
  String token;
  DateTime expires;

  String login_provider;
  String login_provider_display;

  @JsonKey(ignore: true)
  bool get isExpired => expires == null || DateTime.now().toUtc().millisecondsSinceEpoch > expires.millisecondsSinceEpoch; 

  UserToken({this.token, this.expires, this.login_provider, this.login_provider_display});

  factory UserToken.fromJson(Map<String, dynamic> json) => _$UserTokenFromJson(json);
  Map<String, dynamic> get toJson => _$UserTokenToJson(this);
}


