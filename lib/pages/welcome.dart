import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taxi/ressources/themes.dart';
import 'package:taxi/pages/login.dart';
import 'package:taxi/pages/register01';

class Welcome extends StatefulWidget {
  Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            space(size.height / 10.0),
            Center(
              child: Text(
                'ID TAXI',
                style: heading2.copyWith(fontSize: 25.0),
              ),
            ),
            space(size.height / 9.0),
            Stack(
              children: <Widget>[Image.asset('assets/images/map.png')],
            ),
            space(size.height / 10.0),
            button(context, 'Connexion', darkOrange, whiteText, 5.0, Login()),
            space(15.0),
            button(context, 'Inscription', whiteText, darkOrange, 5.0, Login()),
          ],
        ),
      ),
    );
  }
}
