import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taxi/pages/otp.dart';
import 'package:taxi/pages/register01.dart';
import 'package:taxi/ressources/themes.dart';
import 'package:taxi/pages/welcome.dart';
import 'package:taxi/pages/login.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerification extends StatefulWidget {
  OtpVerification({Key? key}) : super(key: key);

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
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
                              builder: ((context) => Otp()),
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
                    "Nous avons envoyé un code sur le \nnuméro 0755287213",
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
            SizedBox(
              width: 323.0,
              height: 51.0,
              child: PinCodeTextField(
                appContext: context,
                length: 4,
                onChanged: (value) {},
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8.0),
                    fieldHeight: 51.0,
                    fieldWidth: 60.0,
                    activeFillColor: Colors.white,
                    inactiveColor: grey,
                    activeColor: darkOrange),
              ),
            ),
            space(size.height / 30.0),
            button(context, 'Confirmer', whiteText, darkOrange, 5.0,
                OtpVerification()),
          ],
        ),
      ),
    );
  }
}
