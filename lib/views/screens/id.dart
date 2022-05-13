import 'package:flutter/material.dart';
import '../widgets/all.dart';
import '../screens/all.dart';
import '../../constants/all.dart';

class Id extends StatelessWidget {
  const Id({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int driverId = 5124;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteText,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            space(size.height / 16.0),
            const Navbar(
              icon: AppIcons.close,
              iconBorder: true,
              title: 'ID',
              toScreen: Homepage(),
            ),
            space(size.height / 15.0),
            const ImageBox(path: id),
            space(30.0),
            Text(
              'Votre code ID chauffeur',
              style: AppTextStyle.heading2.copyWith(
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            space(10.0),
            Text(
              driverId.toString(),
              style: AppTextStyle.heading2.copyWith(
                fontSize: 30.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
