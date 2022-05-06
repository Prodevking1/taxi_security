import 'package:flutter/material.dart';
import '../widgets/all.dart';
import '../screens/all.dart';
import '../../constants/all.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
              title: 'Inscription',
              icon: Icons.chevron_left,
              toScreen: Login(),
            ),
            space(size.height / 10.0),
            const InputField(
              hintText: 'Nom et prénom',
              prefixIcon: Icon(AppIcons.user),
            ),
            const InputField(
              hintText: 'Lieu d’habitation',
              prefixIcon: Icon(AppIcons.mapmarker),
            ),
            const InputField(
              hintText: 'Numéro du permis',
              prefixIcon: Icon(AppIcons.idwallet),
              keyboardType: TextInputType.number,
            ),
            const InputField(
              hintText: 'Immatriculation véhicule',
              prefixIcon: Icon(AppIcons.taxi),
            ),
            const InputField(
              hintText: 'Mot de passe',
              prefixIcon: Icon(AppIcons.padlock),
              passwordField: true,
            ),
            const InputField(
              hintText: 'Confirmer le mot de passe',
              prefixIcon: Icon(AppIcons.padlock),
              passwordField: true,
            ),
            space(size.height / 10.0),
            RoundedButton(
              buttonText: 'Créer un compte',
              buttonColor: AppColors.darkOrange,
              textColor: AppColors.whiteText,
              toScreen: const Otp(),
            ),
            space(10.0),
            const BottomLinks(
              left: 'Vous avez déjà un compte ?',
              right: 'Connectez-vous',
              toScreen: Login(),
            )
          ],
        ),
      ),
    );
  }
}
