import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taxi/pages/otp.dart';
import 'package:taxi/pages/register01.dart';
import 'package:taxi/ressources/themes.dart';
import 'package:taxi/pages/welcome.dart';
import 'package:taxi/pages/login.dart';

class Register02 extends StatefulWidget {
  Register02({Key? key}) : super(key: key);

  @override
  State<Register02> createState() => _Register02State();
}

class _Register02State extends State<Register02> {
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
                                    builder: ((context) => Register01())));
                          },
                          icon: chevronLeft)),
                ),
                Center(
                  child: Text(
                    'Inscription',
                    style: heading2.copyWith(fontSize: 25.0),
                  ),
                )
              ],
            ),
            space(size.height / 10.0),
            Stack(
              children: <Widget>[
                Image.asset('assets/images/inscription2.png'),
              ],
            ),
            space(size.height / 15.0),
            inputField("E-mail", mail),
            inputField("Mot de passe", lock, 1),
            inputField("Confirmer le mot de passe", lock, 1),
            space(size.height / 40.0),
            button(
                context, 'Créer un compte', whiteText, darkOrange, 5.0, Otp()),
            space(10.0),
            SizedBox(
              width: 325,
              child: Row(
                children: <Widget>[
                  Text(
                    'Vous avez déjà un compte ?',
                    style: heading2.copyWith(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                        color: greyText),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      'Connectez-vous',
                      style: heading2.copyWith(
                          fontSize: 13.0,
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

  /* lister un nouvel element dans la ListView */

}
