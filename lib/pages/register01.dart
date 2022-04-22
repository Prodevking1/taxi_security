import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taxi/ressources/themes.dart';
import 'package:taxi/pages/welcome.dart';
import 'package:taxi/pages/login.dart';
import 'package:taxi/pages/register02.dart';

class Register01 extends StatefulWidget {
  Register01({Key? key}) : super(key: key);

  @override
  State<Register01> createState() => _Register01State();
}

class _Register01State extends State<Register01> {
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
                    'Inscription',
                    style: heading2.copyWith(fontSize: 25.0),
                  ),
                )
              ],
            ),
            space(size.height / 15.0),
            inputField("Nom et prénom", phone),
            inputField("Lieu d’habitation", map),
            inputField("Numéro du permis", permis),
            inputField("Immatriculation véhicule", immatriculation),
            space(20.0),
            SizedBox(
              width: 325,
              height: 209,
              child: Card(
                elevation: 3.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
                color: cardColor,
                child: ListView(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1.0, color: grey),
                        ),
                      ),
                      child: ListTile(
                        title: Text(
                          'Prendre une photo',
                          style: heading2.copyWith(
                            color: greyText,
                            fontWeight: FontWeight.w400,
                            fontSize: 17.0,
                          ),
                        ),
                        trailing: IconButton(onPressed: () {}, icon: camera),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1.0, color: grey),
                        ),
                      ),
                      child: ListTile(
                        title: Text(
                          'Photo du permis',
                          style: heading2.copyWith(
                            color: greyText,
                            fontWeight: FontWeight.w400,
                            fontSize: 17.0,
                          ),
                        ),
                        trailing: IconButton(onPressed: () {}, icon: camera),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1.0, color: grey),
                        ),
                      ),
                      child: ListTile(
                        title: Text(
                          'Photo de la carte grise',
                          style: heading2.copyWith(
                            color: greyText,
                            fontWeight: FontWeight.w400,
                            fontSize: 17.0,
                          ),
                        ),
                        trailing: IconButton(onPressed: () {}, icon: camera),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            space(size.height / 25.0),
            button(
                context, 'Continuer', whiteText, darkOrange, 5.0, Register02()),
            space(5.0),
            SizedBox(
              width: 325,
              child: Row(
                children: <Widget>[
                  Text(
                    'Vous avez déjà un compte ?  ',
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
                          builder: (context) => Login(),
                        ),
                      );
                    },
                    child: Text(
                      'Connectez-vous',
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

  /* lister un nouvel element dans la ListView */

}
