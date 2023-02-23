// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      username: json['username'] as String,
      uid: json['uid'] as String,
      profileImageUrl: json['profileImageUrl'] as String,
      active: json['active'] as bool,
      lastSeen: json['lastSeen'] as int,
      phoneNumber: json['phoneNumber'] as String,
      groupId:
          (json['groupId'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'uid': instance.uid,
      'profileImageUrl': instance.profileImageUrl,
      'active': instance.active,
      'lastSeen': instance.lastSeen,
      'phoneNumber': instance.phoneNumber,
      'groupId': instance.groupId,
    };
