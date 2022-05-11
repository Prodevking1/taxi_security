import 'package:flutter/material.dart';
import 'package:taxi/constants/all.dart';
import 'package:taxi/views/screens/all.dart';
import 'package:taxi/views/widgets/all.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.whiteText,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            space(size.height / 16.0),
            Navbar(
              title: 'Connexion',
              icon: Icons.chevron_left,
              toScreen: Welcome(),
            ),
            space(size.height / 20.0),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    space(size.height / 15.0),
                    const ImageBox(path: login),
                    space(size.height / 8.0),
                    InputField(
                      textEditController: TextEditingController()
                        ..text = "+225 ",
                      inputRadius: 6.0,
                      borderColor: AppColors.grey,
                      hintText: 'Numéro de téléphone',
                      prefixIcon: const Icon(AppIcons.phone),
                      inputType: InputType.Phone,
                    ),
                    InputField(
                      textEditController: _passwordController,
                      inputRadius: 6.0,
                      borderColor: AppColors.grey,
                      hintText: 'Mot de passe',
                      prefixIcon: const Icon(AppIcons.padlock),
                      passwordField: true,
                      inputType: InputType.Password,
                    ),
                    space(15.0),
                    RoundedButton(
                      buttonColor: AppColors.darkOrange,
                      buttonText: 'Se connecter',
                      textColor: AppColors.whiteText,
                      toScreen: const Homepage(),
                    ),
                    space(10.0),
                    BottomLinks(
                      left: 'Vous n’avez pas de compte ?',
                      right: 'Inscrivez-vous',
                      toScreen: SignUp(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
