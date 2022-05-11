import 'package:flutter/material.dart';
import '../widgets/all.dart';
import '../screens/all.dart';
import '../../constants/all.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _permisController = TextEditingController();
  final TextEditingController _immatriculationController =
      TextEditingController();
  final TextEditingController _password1Controller = TextEditingController();
  final TextEditingController _password2Controller = TextEditingController();

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
              title: 'Inscription',
              icon: Icons.chevron_left,
              toScreen: Login(),
            ),
            space(size.height / 10.0),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: <Widget>[
                    InputField(
                      textEditController: _nameController,
                      hintText: 'Nom et prénom',
                      prefixIcon: const Icon(AppIcons.user),
                      inputType: InputType.Default,
                    ),
                    InputField(
                      textEditController: _locationController,
                      hintText: 'Lieu d’habitation',
                      prefixIcon: const Icon(AppIcons.mapmarker),
                      inputType: InputType.Default,
                    ),
                    InputField(
                      textEditController: _permisController,
                      inputType: InputType.Phone,
                      hintText: 'Numéro du permis',
                      prefixIcon: const Icon(AppIcons.idwallet),
                    ),
                    InputField(
                      textEditController: _immatriculationController,
                      hintText: 'Immatriculation véhicule',
                      prefixIcon: const Icon(AppIcons.taxi),
                      inputType: InputType.Default,
                    ),
                    InputField(
                      textEditController: _password1Controller,
                      hintText: 'Mot de passe',
                      prefixIcon: const Icon(AppIcons.padlock),
                      passwordField: true,
                      inputType: InputType.Password,
                    ),
                    InputField(
                      textEditController: _password2Controller,
                      hintText: 'Confirmer le mot de passe',
                      prefixIcon: const Icon(AppIcons.padlock),
                      passwordField: true,
                      inputType: InputType.Password,
                      validator: (val) {
                        if (_password2Controller.text !=
                            _password1Controller.text) {
                          return 'Mots de passe differents';
                        }
                        return '';
                      },
                    ),
                    space(size.height / 20.0),
                    RoundedButton(
                      buttonText: 'Créer un compte',
                      buttonColor: AppColors.darkOrange,
                      textColor: AppColors.whiteText,
                      toScreen: Otp(),
                    ),
                    space(10.0),
                    BottomLinks(
                      left: 'Vous avez déjà un compte ?',
                      right: 'Connectez-vous',
                      toScreen: Login(),
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
