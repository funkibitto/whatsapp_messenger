import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whatsapp_messenger/feature/locale/domain/usecases/get_app_locale.dart';
import 'package:whatsapp_messenger/feature/locale/domain/usecases/set_app_locale.dart';

part 'app_locale_controller.g.dart';

enum AppLocale {
  english('en'),
  korean('ko');

  const AppLocale(this.code);

  final String code;
}

@Riverpod(keepAlive: true)
class AppLocaleController extends _$AppLocaleController {
  @override
  Future<AppLocale> build() {
    _getAppLocale = ref.watch(getAppLocaleProvider);
    _setAppLocale = ref.watch(setAppLocaleProvider);
    return _getUserStoredLocale();
  }

  late final GetAppLocale _getAppLocale;
  late final SetAppLocale _setAppLocale;

  Future<AppLocale> _getUserStoredLocale() async {
    final storedLocale = await _getAppLocale();
    return AppLocale.values.firstWhere((l) => l.code == storedLocale);
  }

  Future<void> changeLocale(AppLocale appLocale) async {
    state = AsyncData(appLocale);
    await _setAppLocale(appLocale.code);
  }
}

@Riverpod(keepAlive: true)
AppLocale currentAppLocale(CurrentAppLocaleRef ref) {
  final AppLocale? locale =
      ref.watch(appLocaleControllerProvider.select((data) => data.valueOrNull));
  return locale ?? AppLocale.english;
}
