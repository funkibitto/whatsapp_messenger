import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_messenger/core/config/router.dart';
import 'package:whatsapp_messenger/core/config/app_themes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    print(ThemeMode.system);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Messenger',
      themeMode: ThemeMode.system,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      routerConfig: router,
    );
  }
}
