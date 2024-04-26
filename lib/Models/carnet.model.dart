import 'package:my_vaccination/Models/enfant.model.dart';
import 'package:my_vaccination/Models/parent.model.dart';

class CarnetModel {
  int id;
  EnfantModel enfant;
  ParentModel parent;

  CarnetModel({
    required this.id,
    required this.enfant,
    required this.parent,
  });
}
