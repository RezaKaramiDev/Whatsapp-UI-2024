import 'package:flutter/material.dart';
import 'package:whatsapp_clone/auth/screen/login_screen.dart';
import 'package:whatsapp_clone/common/widgets/agree_button.dart';
import 'package:whatsapp_clone/common/widgets/text_button.dart';
import 'package:whatsapp_clone/ui/new_colors.dart';
import 'package:whatsapp_clone/colors.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});
  void navigateToLoginScreen(BuildContext context) {
    Navigator.pushNamed(context, LoginScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final privacyPolicyTextBotton = WhatsAppTextButton(
      text: 'Privacy Policy',
      onPressed: () {},
    );
    final WhatsAppTextButton termOfServiceTextBotton = WhatsAppTextButton(
      text: 'Term of Service',
      onPressed: () {},
    );
    final Color textButtomColor = Colors.blue.shade300;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 56, 8, 16),
          child: Column(
            children: [
              Text(
                'Welcome to WhatsApp',
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                    color: Colors.white.withOpacity(0.8)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 56, 24, 56),
                child: Image.asset(
                  "assets/bg.png",
                  color: floatingActionButtonColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: RichText(
                  text: TextSpan(
                    text: 'Read our ',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8), height: 1.5),
                    children: [
                      TextSpan(
                        text: privacyPolicyTextBotton.text,
                        style: TextStyle(color: textButtomColor),
                      ),
                      TextSpan(
                        text: '. Tap "Agree and Continue" to accept the ',
                        style: TextStyle(color: Colors.white.withOpacity(0.8)),
                      ),
                      TextSpan(
                        text: termOfServiceTextBotton.text,
                        style: TextStyle(color: textButtomColor),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              WhatsAppButton(
                text: 'Agree and Continue'.toUpperCase(),
                onPressed: () => navigateToLoginScreen(context),
              ),
              const SizedBox(
                height: 30,
              ),
              Text('from',
                  style: TextStyle(color: Colors.white.withOpacity(0.7))),
              const SizedBox(
                height: 12,
              ),
              Text(
                'FACEBOOK',
                style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 2,
                    color: Colors.white.withOpacity(0.9)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
