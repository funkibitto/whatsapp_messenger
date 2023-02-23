import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:whatsapp_messenger/core/config/app_colors.dart';
import 'package:whatsapp_messenger/core/extension/custom_theme_extension.dart';
import 'package:whatsapp_messenger/core/widgets/custom_icon_button.dart';
import 'package:whatsapp_messenger/feature/locale/presentation/providers/app_locale_controller.dart';
import 'package:whatsapp_messenger/feature/welcome/presentation/widgets/language_ittem.dart';

class LanguageButton extends HookConsumerWidget {
  const LanguageButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      color: context.theme.langBgColor,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () => showBottomSheet(context),
        borderRadius: BorderRadius.circular(20),
        splashFactory: NoSplash.splashFactory,
        highlightColor: context.theme.langHighlightColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8.0,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(
                Icons.language,
                color: AppColors.greenDark,
              ),
              SizedBox(width: 10),
              Text(
                'English',
                style: TextStyle(
                  color: AppColors.greenDark,
                ),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.keyboard_arrow_down,
                color: AppColors.greenDark,
              ),
            ],
          ),
        ),
      ),
    );
  }

  showBottomSheet(context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Consumer(builder: (context, ref, child) {
          final currentLocale = ref.watch(currentAppLocaleProvider);
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  right: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: CustomIconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icons.close,
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 4,
                      width: 30,
                      decoration: BoxDecoration(
                        color: context.theme.greyColor!.withOpacity(.4),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      alignment: Alignment.center,
                      child: const Text(
                        'App Language ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Divider(
                      color: context.theme.greyColor!.withOpacity(.3),
                      thickness: .5,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: AppLocale.values.length,
                      itemBuilder: (context, index) {
                        return LanguageItem(
                          appLocale: AppLocale.values[index],
                          currentLocale: currentLocale,
                          changeLocale: ref
                              .read(appLocaleControllerProvider.notifier)
                              .changeLocale,
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        });
      },
    );
  }
}
