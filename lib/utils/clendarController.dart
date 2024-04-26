import 'package:get/get.dart';

class CalendarController extends GetxController {
  final Rx<DateTime> selectedDay = DateTime.now().obs;

  void onDaySelected(DateTime day, DateTime focusedDay) {
    selectedDay.value = day;
  }
}
