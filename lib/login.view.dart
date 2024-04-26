import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_vaccination/utils/global.colors.dart';
import 'package:my_vaccination/widgets/button.global.dart';
import 'package:my_vaccination/widgets/text.form.global.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final TextEditingController emailControl = TextEditingController();
  final TextEditingController passwordControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                // color: GlobalColors.mainColor,
                alignment: Alignment.center,
                child: Image.asset(
                  'vaccin.png',
                  width: 600,
                  height: 100,
                  color: GlobalColors.mainColor,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Connectez-vous pour accede a votre compte',
                    style: TextStyle(
                        color: GlobalColors.textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ////Email
                  TextFormGlobal(
                    controller: emailControl,
                    text: 'Email',
                    obscure: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ////Mot de passe
                  TextFormGlobal(
                    controller: passwordControl,
                    text: 'Mot de passe',
                    obscure: true,
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ButtonGlobal(),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("texfe click");
                        },
                        child: Text(
                          'Mot de passe oblier !',
                          style: TextStyle(
                              color: Colors.blue[500],
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
