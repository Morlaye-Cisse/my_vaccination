// import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:my_vaccination/Models/RvModel.dart';

// ignore: camel_case_types
class RvController extends GetxController {
  var myListeDate = <RvModel>[].obs;
  String get lastDate => myListeDate.last.date;

  @override
  void onInit() {
    super.onInit();
    getAllDate();
  }

  void getAllDate() {
    // await Future.delayed(Duration(seconds: 1));
    var serverResponse = [
      RvModel(id: 1, date: "12-01-2025"),
      RvModel(id: 2, date: "12-01-2020"),
      RvModel(id: 3, date: "12-01-2015"),
      RvModel(id: 4, date: "12-01-2010"),
      RvModel(id: 5, date: "12-01-2005"),
      RvModel(id: 6, date: "12-01-2030")
    ];

    myListeDate.value = serverResponse;
  }
}
