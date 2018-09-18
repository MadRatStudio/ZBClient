// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return UserData()
    ..first_name = json['first_name'] as String
    ..last_name = json['last_name'] as String
    ..image_url = json['image_url'] as String
    ..token = UserToken.fromJson(json['token'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'image_url': instance.image_url,
      'token': instance.token
    };

UserToken _$UserTokenFromJson(Map<String, dynamic> json) {
  return UserToken(
      token: json['token'] as String,
      expires: json['expires'] == null
          ? null
          : DateTime.parse(json['expires'] as String));
}

Map<String, dynamic> _$UserTokenToJson(UserToken instance) => <String, dynamic>{
      'token': instance.token,
      'expires': instance.expires?.toIso8601String()
    };
