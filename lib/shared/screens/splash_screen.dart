import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:startup/features/main_screen.dart';

import '../../app_constants.dart';
import '../../config.dart';
import 'package:startup/features/authanticattion/screens/sign_ups_screen.dart.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(() => SignUpsScreen());
      //Get.off(() => MyHomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: fullWidth(context) * 0.2),
          child: const Image(image: AssetImage(AppConstants.logo)),
        ),
      ),
    );
  }
}
