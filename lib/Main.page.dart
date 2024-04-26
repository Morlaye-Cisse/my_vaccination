import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:my_vaccination/carnet.view.dart';
import 'package:my_vaccination/home.view.dart';
import 'package:my_vaccination/info.view.dart';
import 'package:my_vaccination/parametre.view.dart';
import 'package:my_vaccination/rv.view.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  final screens = [
    HomeView(),
    RvView(),
    CarnetView(),
    InfoView(),
    ParametreView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[index],
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
              indicatorColor: Color.fromARGB(255, 14, 134, 231),
              labelTextStyle: MaterialStateProperty.all(
                  TextStyle(fontSize: 14, fontWeight: FontWeight.w500))),
          child: NavigationBar(
            height: 70,
            backgroundColor: Color(0xFFf1f5fb),
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            selectedIndex: index,
            animationDuration: Duration(seconds: 1),
            onDestinationSelected: (index) => setState(() {
              this.index = index;
            }),
            destinations: const [
              NavigationDestination(
                label: 'Acceuil',
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home_outlined),
              ),
              NavigationDestination(
                  selectedIcon: Icon(Icons.timer_outlined),
                  icon: Icon(Icons.timer_outlined),
                  label: 'R_V'),
              NavigationDestination(
                  selectedIcon: Icon(Icons.book_outlined),
                  icon: Icon(Icons.book_outlined),
                  label: 'Carnet'),
              NavigationDestination(
                  icon: Icon(Icons.info_outline),
                  selectedIcon: Icon(Icons.info_outline),
                  label: 'Conseille'),
              NavigationDestination(
                  icon: Icon(Icons.settings_outlined),
                  selectedIcon: Icon(Icons.settings_outlined),
                  label: 'parametre'),
            ],
          ),
        ));
  }
}
