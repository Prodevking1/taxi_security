import 'package:flutter/material.dart';
import 'package:taxi/utils/constants.dart';
import 'package:taxi/views/widgets/navigation_bar.dart';
import 'package:taxi/views/widgets/rounded_button.dart';
/* import 'package:taxi/views/pages/login.dart';
import 'package:taxi/views/pages/register01.dart'; */

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
      backgroundColor: ThemeConfig.whiteText,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            space(size.height / 10.0),
            const Navbar(title: 'Taxi'),
            space(size.height / 9.0),
            Stack(
              children: <Widget>[Image.asset('assets/images/map.png')],
            ),
            space(size.height / 10.0),
          ],
        ),
      ),
    );
  }
}
