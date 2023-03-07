import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:whatsapp_messenger/core/config/app_colors.dart';
import 'package:whatsapp_messenger/core/extension/custom_theme_extension.dart';
import 'package:whatsapp_messenger/core/widgets/custom_elevated_button.dart';
import 'package:whatsapp_messenger/core/widgets/custom_icon_button.dart';
import 'package:whatsapp_messenger/core/widgets/show_alert_dialog.dart';
import 'package:whatsapp_messenger/feature/auth/presentaion/widgets/custom_text_field.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final countryNameController = useTextEditingController();
    final countryCodeController = useTextEditingController();
    final phoneNumberController = useTextEditingController();

    sendCodeToPhone() {
      final phoneNumber = phoneNumberController.text;
      final countryName = countryNameController.text;
      final countryCode = countryCodeController.text;
      if (phoneNumber.isEmpty) {
        return showAlertDialog(
          context: context,
          message: "Please enter your phone number",
        );
      } else if (phoneNumber.length < 9) {
        return showAlertDialog(
          context: context,
          message:
              'The phone number you entered is too short for the country: $countryName\n\nInclude your area code if you haven\'t',
        );
      } else if (phoneNumber.length > 10) {
        return showAlertDialog(
          context: context,
          message:
              "The phone number you entered is too long for the country: $countryName",
        );
      }
    }

    showCountryPickerBottomSheet() {}

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Text(
          "Enter your phone number",
          style: TextStyle(
            color: context.theme.authAppBarTextColor,
          ),
        ),
        centerTitle: true,
        actions: [
          CustomIconButton(onPressed: () {}, icon: Icons.more_vert),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "WhatsApp will need to verify your phone number. ",
                  style: TextStyle(
                    color: context.theme.greyColor,
                    height: 1.5,
                  ),
                  children: [
                    TextSpan(
                      text: "What's my number?",
                      style: TextStyle(
                        color: context.theme.blueColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: CustomTextField(
                onTap: showCountryPickerBottomSheet,
                controller: countryNameController,
                readOnly: true,
                suffixIcon: const Icon(
                  Icons.arrow_drop_down,
                  color: AppColors.greenDark,
                  size: 22,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                children: [
                  SizedBox(
                    width: 70,
                    child: CustomTextField(
                      onTap: showCountryPickerBottomSheet,
                      controller: countryCodeController,
                      prefixText: '+',
                      readOnly: true,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CustomTextField(
                      controller: phoneNumberController,
                      hintText: 'Phone number',
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Carrier charges may apply',
              style: TextStyle(
                color: context.theme.greyColor,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomElevatedButton(
        onPressed: sendCodeToPhone,
        text: 'Next',
        buttonWidth: 90,
      ),
    );
  }
}
