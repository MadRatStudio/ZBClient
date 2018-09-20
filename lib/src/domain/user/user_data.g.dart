// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return UserData(
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      image_src: json['image_src'] as String,
      token: UserToken.fromJson(json['token'] as Map<String, dynamic>),
      roles: (json['roles'] as List).map((e) => e as String).toList());
}

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'image_src': instance.image_src,
      'roles': instance.roles,
      'token': instance.token
    };

UserToken _$UserTokenFromJson(Map<String, dynamic> json) {
  return UserToken(
      token: json['token'] as String,
      expires: json['expires'] == null
          ? null
          : DateTime.parse(json['expires'] as String),
      login_provider: json['login_provider'] as String,
      login_provider_display: json['login_provider_display'] as String);
}

Map<String, dynamic> _$UserTokenToJson(UserToken instance) => <String, dynamic>{
      'token': instance.token,
      'expires': instance.expires?.toIso8601String(),
      'login_provider': instance.login_provider,
      'login_provider_display': instance.login_provider_display
    };
