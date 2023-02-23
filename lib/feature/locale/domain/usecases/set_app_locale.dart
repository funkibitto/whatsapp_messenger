import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whatsapp_messenger/core/usecases/usecase.dart';
import 'package:whatsapp_messenger/feature/locale/data/repositories/locale_repository_impl.dart';
import 'package:whatsapp_messenger/feature/locale/domain/repositories/locale_repository.dart';

part 'set_app_locale.g.dart';

@Riverpod(keepAlive: true)
SetAppLocale setAppLocale(SetAppLocaleRef ref) {
  return SetAppLocale(
    localeRepository: ref.watch(localeRepositoryProvider),
  );
}

class SetAppLocale implements UseCaseBase<void, String> {
  SetAppLocale({required this.localeRepository});

  final LocaleRepository localeRepository;

  @override
  Future<void> call(String languageCode) async {
    return await localeRepository.setAppLocale(languageCode);
  }
}
