// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String username,
    required String uid,
    required String profileImageUrl,
    required bool active,
    required int lastSeen,
    required String phoneNumber,
    required List<String> groupId,
  }) = _User;
}
