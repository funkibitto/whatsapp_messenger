import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whatsapp_messenger/core/usecases/usecase.dart';
import 'package:whatsapp_messenger/feature/locale/data/repositories/locale_repository_impl.dart';
import 'package:whatsapp_messenger/feature/locale/domain/repositories/locale_repository.dart';

part 'get_app_locale.g.dart';

@Riverpod(keepAlive: true)
GetAppLocale getAppLocale(GetAppLocaleRef ref) {
  return GetAppLocale(
    localeRepository: ref.watch(localeRepositoryProvider),
  );
}

class GetAppLocale implements UseCaseNoParamsBase<String> {
  GetAppLocale({required this.localeRepository});

  final LocaleRepository localeRepository;

  @override
  Future<String> call() async {
    return await localeRepository.getAppLocale();
  }
}
