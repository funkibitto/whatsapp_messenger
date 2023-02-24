import 'dart:io';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:whatsapp_messenger/feature/auth/data/models/user_model.dart';

abstract class AuthRemoteDataSource {
  Stream<UserModel> getUserPresenceStatus(String uid);

  Future<UserModel?> getUserInfo();

  Future<String> uploadProfileImage(File imageFile);

  Future<void> createUser(
      {required String username, required String phoneNumber});
}
