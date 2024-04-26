import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  final Color background;
  final Color textColor;
  MyAppBar(
      {super.key,
      required this.title,
      this.background = Colors.white,
      this.textColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: background,
      title: Text(
        title,
        style: TextStyle(color: textColor),
      ),
      leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: textColor,
          )),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
