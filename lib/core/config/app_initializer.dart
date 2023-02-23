import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whatsapp_messenger/feature/locale/presentation/providers/app_locale_controller.dart';

part 'app_initializer.g.dart';

@Riverpod(keepAlive: true)
AppInitializer appInitializer(AppInitializerRef ref) {
  return AppInitializer(ref);
}

class AppInitializer {
  AppInitializer(this.ref);
  final AppInitializerRef ref;

  Future<void> init() async {
    await _initializeServices();
  }

  Future<void> _initializeServices() async {
    await _initLocalization();
  }

  Future<void> _initLocalization() async {
    try {
      await ref.read(appLocaleControllerProvider.future);
    } catch (_) {}
  }
}
