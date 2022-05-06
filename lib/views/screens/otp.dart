import 'package:flutter/material.dart';
import 'package:taxi/views/screens/otp_verification.dart';
import 'package:taxi/views/widgets/info_text.dart';
import '../widgets/all.dart';
import '../screens/all.dart';
import '../../constants/all.dart';

class Otp extends StatelessWidget {
  const Otp({Key? key}) : super(key: key);

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
            const Navbar(
              icon: Icons.chevron_left,
              toScreen: SignUp(),
            ),
            space(size.height / 25.0),
            const ImageBox(path: otp),
            space(size.height / 10.0),
            const Info(
              text1: 'Verification OTP',
              text2:
                  'Nous vous enverrons un code de \nvérification sur votre numéro',
            ),
            space(size.height / 20.0),
            const InputField(
              hintText: 'Numéro de téléphone',
              prefixIcon: Icon(AppIcons.phone),
            ),
            RoundedButton(
              buttonText: 'Recevoir le code',
              textColor: AppColors.whiteText,
              toScreen: const OtpVerification(),
            ),
            space(20.0),
            const BottomLinks(
              left: 'Vous avez déjà un compte ?',
              right: 'Connectez-vous',
              toScreen: Login(),
            ),
          ],
        ),
      ),
    );
  }
}
