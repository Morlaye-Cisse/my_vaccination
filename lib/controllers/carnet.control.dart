import 'package:get/get.dart';
import 'package:my_vaccination/Models/carnet.model.dart';
import 'package:my_vaccination/Models/enfant.model.dart';
import 'package:my_vaccination/Models/parent.model.dart';

class CarnetController extends GetxController {
  var myListeCarnet = <CarnetModel>[].obs;

  List get myListeCarnets => myListeCarnet.value;

  @override
  void onInit() {
    super.onInit();
    getAllCarnetByTelephoneUser("772086929");
  }

  void getAllCarnetByTelephoneUser(String telephone) {
    var serverResponse = [
      CarnetModel(
          id: 1,
          enfant: EnfantModel(
              id: 1,
              nom: "cisse",
              prenom: "Adama",
              dateNaissance: DateTime.utc(2022, 10, 02),
              genre: "masculin"),
          parent: ParentModel(
              id: 1,
              nom: "cisse",
              prenom: "Adama",
              telephone: "772086929",
              adresse: "Tamba",
              password: "12344"))
    ];

    myListeCarnet.value = serverResponse;
  }
}
