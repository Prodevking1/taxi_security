import 'package:flutter/material.dart';
import 'package:taxi/views/widgets/roundedCard.dart';
import '../widgets/all.dart';
import '../screens/all.dart';
import '../../constants/all.dart';

class Welcome1 extends StatelessWidget {
  const Welcome1({Key? key}) : super(key: key);

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
              title: 'Bienvenue',
              icon: Icons.chevron_left,
              toScreen: Login(),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: EdgeInsets.only(
                    left: size.width / 9.0, top: size.height / 20.0),
                child: Text(
                  'Pour aller plus loin, nous avons besoin \n\t\t\t\t\t\t\t\t\t\t\t\tde documents formels',
                  style: AppTextStyle.heading2.copyWith(
                      fontSize: 16.0,
                      color: AppColors.blackText,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            space(25.0),
            const ImageBox(path: welcome),
            space(size.height / 15.0),
            RoundedCard(
              child: Column(
                children: const <Widget>[
                  ItemList(
                    title: 'Prendre une photo',
                    icon: Icon(AppIcons.camera),
                  ),
                  ItemList(
                    title: 'Photo du permis',
                    icon: Icon(AppIcons.camera),
                  ),
                  ItemList(
                    title: 'Photo de la carte',
                    icon: Icon(AppIcons.camera),
                  ),
                ],
              ),
            ),
            space(size.height / 20.0),
            const SizedBox(
              width: 323.0,
              height: 53.0,
              child: StepProgress(),
            ),
          ],
        ),
      ),
    );
  }
}
