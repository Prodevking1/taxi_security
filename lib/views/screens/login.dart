import 'package:flutter/material.dart';
import 'package:taxi/constants/all.dart';
import 'package:taxi/views/screens/all.dart';
import 'package:taxi/views/widgets/all.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.whiteText,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            space(size.height / 10.0),
            Navbar(
              title: 'Connexion',
              icon: Icons.chevron_left,
              toScreen: Welcome(),
            ),
            space(size.height / 20.0),
            const ImageBox(path: login),
            space(size.height / 5.0),
            InputField(
              inputRadius: 6.0,
              borderColor: AppColors.grey,
              hintText: 'Numéro de téléphone',
              prefixIcon: const Icon(AppIcons.phone),
              keyboardType: TextInputType.phone,
            ),
            space(8.0),
            InputField(
              inputRadius: 6.0,
              borderColor: AppColors.grey,
              hintText: 'Mot de passe',
              prefixIcon: const Icon(AppIcons.padlock),
              passwordField: true,
              keyboardType: TextInputType.visiblePassword,
            ),
            space(15.0),
            RoundedButton(
              buttonColor: AppColors.darkOrange,
              buttonText: 'Se connecter',
              textColor: AppColors.whiteText,
              toScreen: Homepage(),
            ),
            space(10.0),
            const BottomLinks(
              left: 'Vous n’avez pas de compte ?',
              right: 'Inscrivez-vous',
              toScreen: SignUp(),
            )
          ],
        ),
      ),
    );
  }
}
