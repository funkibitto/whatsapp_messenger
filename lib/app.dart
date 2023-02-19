import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_messenger/core/config/router.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.dark(),
      routerConfig: router,
    );
  }
}
