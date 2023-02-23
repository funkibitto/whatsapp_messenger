import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whatsapp_messenger/core/error/app_exception.dart';
import 'package:whatsapp_messenger/core/local/local_storage_service.dart';

part 'locale_local_data_source.g.dart';

@Riverpod(keepAlive: true)
LocaleLocalDataSource localeLocalDataSource(LocaleLocalDataSourceRef ref) {
  return LocaleLocalDataSourceImpl(
    localStorageService: ref.watch(localStorageServiceProvider),
  );
}

abstract class LocaleLocalDataSource {
  Future<String> getAppLocale();
  Future<void> setAppLocale(String languageCode);
}

class LocaleLocalDataSourceImpl implements LocaleLocalDataSource {
  LocaleLocalDataSourceImpl({required this.localStorageService});

  final LocalStorageService localStorageService;

  final String appLocaleKey = 'app_locale';

  @override
  Future<String> getAppLocale() async {
    final locale = await localStorageService.restoreData(
      key: appLocaleKey,
      dataType: DataType.string,
    );
    if (locale != null) {
      return locale;
    } else {
      throw const CacheException(
        type: CacheExceptionType.notFound,
        message: 'Cache Not Found',
      );
    }
  }

  @override
  Future<void> setAppLocale(String languageCode) async {
    await localStorageService.saveData(
      value: languageCode,
      key: appLocaleKey,
      dataType: DataType.string,
    );
  }
}
