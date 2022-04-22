import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taxi/pages/register01.dart';
import 'package:taxi/ressources/themes.dart';
import 'package:taxi/pages/login.dart';
import 'package:taxi/pages/welcome.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: whiteText,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            space(size.height / 10.0),
            Stack(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      border: Border.all(color: grey)),
                  child: Center(
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => Welcome())));
                          },
                          icon: chevronLeft)),
                ),
                Center(
                  child: Text(
                    'Connexion',
                    style: heading2.copyWith(fontSize: 25.0),
                  ),
                )
              ],
            ),
            space(size.height / 9.0),
            Stack(
              children: <Widget>[Image.asset('assets/images/login.png')],
            ),
            space(size.height / 7.0),
            inputField("Numéro de téléphone", phone),
            inputField("Mot de passe", lock),
            space(20.0),
            button(context, 'Connexion', whiteText, darkOrange, 5.0, Login()),
            space(10.0),
            SizedBox(
              width: 325,
              child: Row(
                children: <Widget>[
                  Text(
                    'Vous n’avez pas de compte ?    ',
                    style: heading2.copyWith(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: greyText),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Register01()));
                    },
                    child: Text(
                      'Inscrivez-vous',
                      style: heading2.copyWith(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: darkOrange),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
