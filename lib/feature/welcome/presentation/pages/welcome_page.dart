import 'package:flutter/material.dart';
import 'package:whatsapp_messenger/core/config/styles/app_colors.dart';
import 'package:whatsapp_messenger/gen/assets.gen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111B21),
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Assets.images.circle.image(color: AppColors.greenDark),
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: 'Read our ',
                      style: TextStyle(
                        color: Color(0xFF8696A0),
                      ),
                      children: [
                        TextSpan(
                          text: 'Privacy Policy.',
                          style: TextStyle(
                            color: Color(0xFF53BDEB),
                          ),
                        ),
                        TextSpan(
                          text: 'Tap "Agree and Continue" to accept the ',
                        ),
                        TextSpan(
                          text: 'Terms of Service.',
                          style: TextStyle(
                            color: Color(0xFF53BDEB),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
                Material(
                  color: const Color(0xFF182229),
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(20),
                    splashFactory: NoSplash.splashFactory,
                    highlightColor: const Color(0xFF09141A),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}