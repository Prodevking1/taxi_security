import 'package:flutter/material.dart';
import 'package:taxi/views/widgets/info_text.dart';
import '../widgets/all.dart';
import '../screens/all.dart';
import '../../constants/all.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteText,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: <Widget>[
            space(size.height / 10.0),
            Navbar(
              icon: Icons.chevron_left,
              toScreen: SignUp(),
            ),
            space(size.height / 25.0),
            const ImageBox(path: otp),
            space(size.height / 10.0),
            const Info(
              text1: 'Verification OTP',
              text2: 'Nous avons envoyé un code sur le \nnuméro 0755287213',
            ),
            space(size.height / 10.0),
            const PinCode(),
            space(size.height / 25.0),
            RoundedButton(
              buttonColor: AppColors.darkOrange,
              buttonText: 'Confirmer',
              textColor: AppColors.whiteText,
              toScreen: const Welcome1(),
            ),
          ],
        ),
      ),
    );
  }
}
