import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/firebase_options.dart';
import 'package:whatsapp_clone/futures/landing_screen/landing_screen.dart';
// import 'package:whatsapp_clone/home.dart';
import 'package:whatsapp_clone/ui/new_colors.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(color: myAppBarColor),
          scaffoldBackgroundColor: backgroundColor),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const LandingScreen(),
    );
  }
}
