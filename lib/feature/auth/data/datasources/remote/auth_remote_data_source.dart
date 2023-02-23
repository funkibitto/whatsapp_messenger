import 'package:whatsapp_messenger/feature/auth/data/models/user_model.dart';

abstract class AuthRemoteDataSource {
  Stream<UserModel> getUserPresenceStatus();
  Future<void> setAppLocale(String languageCode);
}
