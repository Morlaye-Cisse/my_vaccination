import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:my_vaccination/controllers/carnet.control.dart';
import 'package:my_vaccination/widgets/Bottom.nav.bar.dart';

class CarnetView extends StatefulWidget {
  CarnetView({super.key});

  @override
  State<CarnetView> createState() => _CarnetViewState();
}

class _CarnetViewState extends State<CarnetView> {
  int _selectedIndex = 1;
  final carnetController = Get.put(CarnetController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                "Carnet de vaccination",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: [
                Expanded(
                  child: GetX<CarnetController>(builder: (controller) {
                    return ListView.builder(
                      itemCount: controller.myListeCarnet.length,
                      itemBuilder: (context, index) {
                        return Card(
                          margin: EdgeInsets.all(4),
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                        "Nom : ${controller.myListeCarnet[index].enfant.nom}"),
                                    Text(
                                        "Prenom : ${controller.myListeCarnet[index].enfant.prenom}")
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                        "Date Naissance : ${controller.myListeCarnet[index].enfant.dateNaissance}"),
                                    Text(
                                        "genre : ${controller.myListeCarnet[index].enfant.genre}")
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }),
                ),
              ],
            ),
            // SizedBox(
            //   height: 10,
            // ),
            Container(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Table(
                    border: TableBorder.all(
                        color: Color.fromARGB(221, 192, 185, 185)),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      TableRow(
                          decoration:
                              BoxDecoration(color: Colors.blue.shade200),
                          children: const [
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text('age'),
                              ),
                            ),
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('vaccin'),
                              ),
                            ),
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('date'),
                              ),
                            ),
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('maladies'),
                              ),
                            ),
                          ]),
                      ...List.generate(
                          20,
                          (index) => const TableRow(children: [
                                TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Des la naissance'),
                                  ),
                                ),
                                TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('BCG'),
                                  ),
                                ),
                                TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('10/02/2024'),
                                  ),
                                ),
                                TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Text('Tuberculoge'),
                                        Text('Poliomyelite'),
                                        Text('Hepatite B'),
                                      ],
                                    ),
                                  ),
                                ),
                              ]))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
