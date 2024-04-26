class EnfantModel {
  int id;
  String nom;
  String prenom;
  DateTime dateNaissance;
  String genre;

  EnfantModel(
      {required this.id,
      required this.nom,
      required this.prenom,
      required this.dateNaissance,
      required this.genre});
}
