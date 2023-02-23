import 'package:flutter/material.dart';
import 'package:whatsapp_messenger/core/config/app_colors.dart';
import 'package:whatsapp_messenger/feature/welcome/presentation/widgets/language_button.dart';
import 'package:whatsapp_messenger/feature/welcome/presentation/widgets/privacy_and_terms.dart';
import 'package:whatsapp_messenger/gen/assets.gen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111B21),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Assets.images.circle.image(
                      color: AppColors.greenDark, width: 290, height: 290),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Expanded(
              child: Column(
                children: [
                  const Text(
                    'Welcome to WhatsApp',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const PrivacyAndTerms(),
                  SizedBox(
                    height: 42,
                    width: MediaQuery.of(context).size.width - 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.greenDark,
                        foregroundColor: const Color(0xFF111B21),
                        splashFactory: NoSplash.splashFactory,
                        elevation: 0,
                        shadowColor: Colors.transparent,
                      ),
                      child: const Text('Agree and Continue'),
                    ),
                  ),
                  const SizedBox(height: 50),
                  const LanguageButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
