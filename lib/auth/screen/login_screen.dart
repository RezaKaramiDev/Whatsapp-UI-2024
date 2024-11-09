import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/auth/controller/auth_controller.dart';
import 'package:whatsapp_clone/auth/screen/otp_screen.dart';
import 'package:whatsapp_clone/common/utils/utils.dart';
import 'package:whatsapp_clone/common/widgets/agree_button.dart';
import 'package:whatsapp_clone/colors.dart';

class LoginScreen extends ConsumerStatefulWidget {
  static const routeName = 'login-Screen';
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final phoneController = TextEditingController();
  Country? country;
  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  void pickCountry() {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      onSelect: (Country _country) {
        setState(() {
          country = _country;
        });
      },
    );
  }

  void sendPhoneNumber() {
    String phoneNumber = phoneController.text.trim();
    if (country != null && phoneNumber.isNotEmpty) {
      ref
          .read(authControllerProvider)
          .signInWithPhone(context, '+${country!.phoneCode}$phoneNumber');
    } else {
      showSnackbar(context: context, content: 'Fill out all the fields!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          title: const Text('Enter your phone number'),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 36),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Text('WhatsApp will need to verify your phone number.'),
                  const SizedBox(
                    height: 16,
                  ),
                  TextButton(
                      onPressed: pickCountry,
                      child: const Text('Pick countrey')),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (country != null) Text('+${country!.phoneCode}'),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            controller: phoneController,
                            decoration: const InputDecoration(
                              hintText: 'phone number',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 85,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 90,
                child: WhatsAppButton(
                  text: 'NEXT',
                  onPressed: () {
                    // sendPhoneNumber();
                    Navigator.pushNamed(
                      context,
                      OTPScreen.routeName,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
