import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_vaccination/login.view.dart';
import 'package:my_vaccination/utils/global.colors.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Get.toNamed('/login');
    });
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: Center(
        child: Image.asset(
          'vaccin2.png',
          width: 400,
          height: 600,
        ),
      ),
    );
  }
}
