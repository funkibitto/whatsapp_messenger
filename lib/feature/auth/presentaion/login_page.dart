import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:whatsapp_messenger/core/widgets/show_alert_dialog.dart';

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

    return Container();
  }
}
