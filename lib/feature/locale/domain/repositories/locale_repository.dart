abstract class LocaleRepository {
  Future<String> getAppLocale();

  Future<void> setAppLocale(String languageCode);
}
