import 'package:flutter/material.dart';
import 'package:taxi/constants/all.dart';
import 'package:taxi/views/screens/all.dart';
import 'package:taxi/views/widgets/all.dart';

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
      backgroundColor: AppColors.whiteText,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            space(size.height / 10.0),
            Center(
              child: Text(
                'Taxi',
                style: AppTextStyle.heading2.copyWith(fontSize: 25.0),
              ),
            ),
            space(size.height / 9.0),
            const ImageBox(path: 'assets/images/map.png'),
            space(size.height / 10.0),
            RoundedButton(
              buttonColor: AppColors.whiteText,
              buttonText: 'Connexion',
              textColor: AppColors.darkOrange,
              toScreen: const Login(),
            ),
            space(size.height / 40.0),
            RoundedButton(
              buttonColor: AppColors.darkOrange,
              buttonText: 'Inscription',
              textColor: AppColors.whiteText,
              toScreen: const SignUp(),
            ),
          ],
        ),
      ),
    );
  }
}
