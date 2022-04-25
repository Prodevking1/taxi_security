import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taxi/pages/register01.dart';
import 'package:taxi/pages/register02.dart';
import 'package:taxi/ressources/themes.dart';
import 'package:taxi/pages/welcome.dart';
import 'package:taxi/pages/login.dart';
import 'package:taxi/pages/otp_verification.dart';

class Otp extends StatefulWidget {
  Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
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
                              builder: ((context) => Welcome()),
                            ),
                          );
                        },
                        icon: chevronLeft),
                  ),
                ),
                Center(
                  child: Text(
                    '',
                    style: heading2.copyWith(fontSize: 25.0),
                  ),
                ),
              ],
            ),
            space(size.height / 25.0),
            Stack(
              children: <Widget>[
                Image.asset('assets/images/otp.png'),
              ],
            ),
            space(size.height / 15.0),
            Container(
              margin: const EdgeInsets.only(left: 35.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Vérification OTP',
                    style: heading2.copyWith(
                        fontSize: 25.0,
                        color: blackText,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            space(15.0),
            Container(
              margin: const EdgeInsets.only(left: 35.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Nous vous enverrons un code de \nvérification sur votre numéro",
                    style: heading2.copyWith(
                        fontSize: 16.0,
                        color: greyText,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            space(size.height / 20.0),
            inputField("Numéro de téléphone", phone),
            space(20.0),
            button(context, 'Recevoir le code', whiteText, darkOrange, 5.0,
                OtpVerification()),
            space(size.height / 30.0),
            SizedBox(
              width: 325,
              child: Row(
                children: <Widget>[
                  Text(
                    'Vous avez déjà un compte ?  ',
                    style: heading2.copyWith(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                        color: greyText),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Register02(),
                        ),
                      );
                    },
                    child: Text(
                      'Connectez-vous',
                      style: heading2.copyWith(
                          fontSize: 13.5,
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
