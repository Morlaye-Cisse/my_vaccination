import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:intl/intl.dart';
import 'package:my_vaccination/Models/RvModel.dart';
import 'package:my_vaccination/controllers/rv.controller.dart';
import 'package:my_vaccination/widgets/Bottom.nav.bar.dart';
// import 'package:table_calendar/table_calendar.dart';
import 'package:table_calendar/table_calendar.dart';

class RvView extends StatefulWidget {
  RvView({super.key});

  @override
  State<RvView> createState() => _RvViewState();
}

class _RvViewState extends State<RvView> {
  final dateController = Get.put(RvController());

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDate;
  int _selectedIndex = 2;

  DateTime getDay(String dateString) {
    List<String> datePart = dateString.split("-");
    int day = int.parse(datePart[0]);
    int month = int.parse(datePart[1]);
    int year = int.parse(datePart[2]);
    return DateTime.utc(year, month, day);
  }

  DateTime getLastDate() {
    // String date = myDateRv.keys.last;
    return conversionStringToDate(dateController.lastDate);
  }

  DateTime conversionStringToDate(String dateString) {
    List<String> datePart = dateString.split("-");
    int day = int.parse(datePart[0]);
    int month = int.parse(datePart[1]);
    int year = int.parse(datePart[2]);

    return DateTime(year, month, day);
  }

  @override
  void initState() {
    super.initState();
    _focusedDay = getDay(dateController.lastDate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            const Center(
              child: Text(
                "Date de rendez vous",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TableCalendar(
              focusedDay: getDay(dateController.lastDate),
              firstDay: DateTime(1990),
              lastDay: DateTime(2060),
              calendarFormat: _calendarFormat,
              locale: 'fr_FR',
              availableCalendarFormats: const {
                CalendarFormat.month: 'Mois',
                CalendarFormat.twoWeeks: 'Quinzaine',
                CalendarFormat.week: 'Semaine'
              },

              selectedDayPredicate: (day) {
                // return isSameDay(_selectedDate, day) ||
                return isSameDay(getLastDate(), day);
              },
              onFormatChanged: (format) {
                if (_calendarFormat != format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                }
              },
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },
              // eventLoader: ,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: double.infinity,
                height: 100,
                // alignment: Alignment.center,
                child: Padding(
                    padding: EdgeInsets.all(4),
                    child: GetX<RvController>(builder: (controller) {
                      return Card(
                        margin: EdgeInsets.all(2),
                        borderOnForeground: true,
                        color: const Color.fromARGB(255, 210, 219, 226),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            children: [
                              Text(
                                "Votre rendez-vous est prevue le",
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 243, 242, 242),
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "${getDay(controller.lastDate).day}, ${getDay(controller.lastDate).month} mois ${getDay(controller.lastDate).year}",
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 243, 242, 242),
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      );
                    })))
          ],
        ),
      ),
    );
  }
}
