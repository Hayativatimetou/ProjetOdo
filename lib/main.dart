import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:startup/shared/screens/splash_screen.dart';
import 'localization/lang.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: LocaleString(),
      locale:  const Locale('fr', 'FR'),
      fallbackLocale: const Locale('fr', 'FR'),
      home: const SplashScreen(),
    );
  }
}

