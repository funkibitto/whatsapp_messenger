import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:whatsapp_messenger/app.dart';
import 'package:whatsapp_messenger/bootstrap.dart';

void main() async {
  runApp(
    UncontrolledProviderScope(
        container: await bootstrap(),
        child: DevicePreview(
          enabled: !kReleaseMode,
          builder: (context) => App(),
        )),
  );
}
