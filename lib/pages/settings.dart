import 'package:flutter/material.dart';
import 'package:taxi/pages/subscription.dart';
import 'package:taxi/ressources/themes.dart';
import 'package:taxi/pages/login.dart';
import 'package:taxi/pages/homepage.dart';

class Settings extends StatefulWidget {
  Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
                  child: Center(
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => Homepage())));
                          },
                          icon: x)),
                ),
                Center(
                  child: Text(
                    'Paramètres',
                    style: heading2.copyWith(
                        fontSize: 25.0,
                        height: 1.5,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(
                      top: size.height / 10.0,
                    ),
                    child: Column(children: <Widget>[
                      rowSetting(
                          context, infos, 'Contacter le support', Settings()),
                      rowSetting(
                          context, details, 'Mes informations', Settings()),
                      rowSetting(
                          context, details, 'Mon abonnement', Subscription()),
                      rowSetting(context, abonnement, 'Termes et Conditions',
                          Settings()),
                      rowSetting(context, logout, 'Déconnexion', Login()),
                    ]))
              ],
            ),
          ],
        ),
      ),
    );
  }

  /* lister un nouvel element dans la ListView */

}
