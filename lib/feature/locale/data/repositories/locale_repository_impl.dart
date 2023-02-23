import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whatsapp_messenger/feature/locale/data/datasources/local/locale_local_data_source.dart';
import 'package:whatsapp_messenger/feature/locale/domain/repositories/locale_repository.dart';

part 'locale_repository_impl.g.dart';

@Riverpod(keepAlive: true)
LocaleRepository localeRepository(LocaleRepositoryRef ref) {
  return LocaleRepositoryImpl(
    localDataSource: ref.watch(localeLocalDataSourceProvider),
  );
}

class LocaleRepositoryImpl implements LocaleRepository {
  LocaleRepositoryImpl({required this.localDataSource});

  final LocaleLocalDataSource localDataSource;

  @override
  Future<String> getAppLocale() async {
    final locale = await localDataSource.getAppLocale();
    return locale;
  }

  @override
  Future<void> setAppLocale(String languageCode) async {
    await localDataSource.setAppLocale(languageCode);
  }
}
