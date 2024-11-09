import 'package:flutter/material.dart';
import 'package:whatsapp_clone/auth/screen/login_screen.dart';
import 'package:whatsapp_clone/auth/screen/otp_screen.dart';
import 'package:whatsapp_clone/common/widgets/error_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(builder: (context) => const LoginScreen());
    case OTPScreen.routeName:
      // final verificationId = settings.arguments as String;
      return MaterialPageRoute(
          builder: (context) => const OTPScreen(
              // verificationId: verificationId,
              ));
    default:
      return MaterialPageRoute(
          builder: (context) => const Scaffold(
                body: ErrorScreen(errorText: "This Page doesn't exist"),
              ));
  }
}
