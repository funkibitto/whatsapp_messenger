import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:whatsapp_messenger/core/config/app_initializer.dart';
import 'package:whatsapp_messenger/core/local/local_storage_service.dart';
import 'package:whatsapp_messenger/feature/locale/presentation/providers/app_locale_controller.dart';

Future<ProviderContainer> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.black, // Color for Android
      statusBarBrightness:
          Brightness.light // Dark == white status bar -- for IOS.
      ));

  final prefs = await SharedPreferences.getInstance();

  final container = ProviderContainer(
    overrides: [sharedPrefsProvider.overrideWithValue(prefs)],
    observers: [_Logger()],
  );

  // init services
  await container.read(appInitializerProvider).init();
  return container;
}

class _Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<dynamic> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    debugPrint(
      '''
      {
      "provider": "${provider.name ?? provider.runtimeType}",
      "newValue": "$newValue"
      }''',
    );
  }
}
