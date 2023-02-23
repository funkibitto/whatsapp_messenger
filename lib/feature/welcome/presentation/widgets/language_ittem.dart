import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:whatsapp_messenger/core/config/app_colors.dart';
import 'package:whatsapp_messenger/core/extension/custom_theme_extension.dart';
import 'package:whatsapp_messenger/core/utils/logger.dart';
import 'package:whatsapp_messenger/feature/locale/presentation/providers/app_locale_controller.dart';

class LanguageItem extends ConsumerWidget {
  const LanguageItem({
    required this.appLocale,
    required this.currentLocale,
    required this.changeLocale,
    Key? key,
  }) : super(key: key);

  final AppLocale appLocale;
  final AppLocale currentLocale;
  final Function changeLocale;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    return RadioListTile(
      value: appLocale,
      groupValue: currentLocale,
      onChanged: (value) {
        logger.i(value);
        changeLocale(value);
      },
      activeColor: AppColors.greenDark,
      title: Text(
        appLocale.name,
      ),
      subtitle: Text(
        appLocale.name,
        style: TextStyle(
          color: context.theme.greyColor,
        ),
      ),
    );
  }
}
