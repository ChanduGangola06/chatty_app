import 'package:chat_app/screens/onboard/onboard_screen.dart';
import 'package:chat_app/utils/constants.dart';
import 'package:chat_app/widgets/logo_tag.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    gotToNext();
  }

  gotToNext() {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        Get.to(() => const OnBoardingScreen());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: cBlack,
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: LogoTag(
          isWhite: true,
          width: Get.width / 2,
        ),
      ),
    );
  }
}
