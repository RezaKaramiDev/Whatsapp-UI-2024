import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/root.dart';
import 'package:whatsapp_clone/colors.dart';

class OTPScreen extends StatefulWidget {
  static const routeName = 'otp-screen';
  // final String verificationId;
  const OTPScreen({
    super.key,
    // required this.verificationId
  });

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text('Verifying your number'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text('We have sent an SMS with a code.'),
            SizedBox(
              width: size.width * 0.5,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                    hintText: ' - - - - - -',
                    hintStyle: TextStyle(fontSize: 30),
                    counterText: ''),
                keyboardType: TextInputType.number,
                maxLength: 6,
                onSubmitted: (value) {
                  if (value.length == 6) {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => const Root()));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
