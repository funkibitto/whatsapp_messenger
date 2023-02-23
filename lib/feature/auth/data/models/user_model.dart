import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whatsapp_messenger/feature/auth/domain/entities/user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();

  const factory UserModel({
    required String username,
    required String uid,
    required String profileImageUrl,
    required bool active,
    required int lastSeen,
    required String phoneNumber,
    required List<String> groupId,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  factory UserModel.fromEntity(User user) {
    return UserModel(
      username: user.username,
      uid: user.uid,
      profileImageUrl: user.profileImageUrl,
      active: user.active,
      lastSeen: user.lastSeen,
      phoneNumber: user.phoneNumber,
      groupId: user.groupId,
    );
  }

  User toEntity() {
    return User(
      username: username,
      uid: uid,
      profileImageUrl: profileImageUrl,
      active: active,
      lastSeen: lastSeen,
      phoneNumber: phoneNumber,
      groupId: groupId,
    );
  }
}
