import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_vaccination/home.view.dart';
import 'package:my_vaccination/utils/global.colors.dart';

class ButtonGlobal extends StatelessWidget {
  const ButtonGlobal({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(HomeView());
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
            color: GlobalColors.mainColor,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 10)
            ]),
        child: const Text(
          'Connexion',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
