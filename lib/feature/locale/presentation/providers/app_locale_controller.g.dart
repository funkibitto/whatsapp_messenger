// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_locale_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$AppLocaleControllerHash() =>
    r'eeebb8a2541a803e61278927ff27a92985587082';

/// See also [AppLocaleController].
final appLocaleControllerProvider =
    AsyncNotifierProvider<AppLocaleController, AppLocale>(
  AppLocaleController.new,
  name: r'appLocaleControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$AppLocaleControllerHash,
);
typedef AppLocaleControllerRef = AsyncNotifierProviderRef<AppLocale>;

abstract class _$AppLocaleController extends AsyncNotifier<AppLocale> {
  @override
  FutureOr<AppLocale> build();
}

String _$currentAppLocaleHash() => r'be4c9dd747ec028a14ddddc8aabef5922011f872';

/// See also [currentAppLocale].
final currentAppLocaleProvider = Provider<AppLocale>(
  currentAppLocale,
  name: r'currentAppLocaleProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentAppLocaleHash,
);
typedef CurrentAppLocaleRef = ProviderRef<AppLocale>;
