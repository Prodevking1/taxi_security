import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:taxi/views/widgets/rounded_card.dart';
import '../widgets/all.dart';
import '../screens/all.dart';
import '../../constants/all.dart';

class Welcome1 extends StatefulWidget {
  const Welcome1({Key? key}) : super(key: key);

  @override
  State<Welcome1> createState() => _Welcome1State();
}

class _Welcome1State extends State<Welcome1> {
  int currentIndex = 0;
  final fileName = [
    'Prendre une photo',
    'Photo du permis',
    'Photo de la carte grise'
  ];

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
                children: <Widget>[
                  ItemList(
                    title:
                        currentIndex == 1 ? fileName[1] : 'Prendre une photo',
                    icon: const Icon(AppIcons.camera),
                    onPress: currentIndex < 3 ? pick : null,
                  ),
                  ItemList(
                    title: currentIndex == 2 ? fileName[2] : 'Photo du permis',
                    icon: const Icon(AppIcons.camera),
                    onPress: currentIndex < 3 ? pick : null,
                  ),
                  ItemList(
                    title: currentIndex == 3
                        ? fileName[3]
                        : 'Photo de la carte grise',
                    icon: const Icon(AppIcons.camera),
                    onPress: currentIndex < 3 ? pick : null,
                  ),
                ],
              ),
            ),
            space(size.height / 15.0),
            SizedBox(
              width: 323.0,
              height: 53.0,
              child: Stack(
                children: <Widget>[
                  StepProgressIndicator(
                    totalSteps: 3,
                    currentStep: currentIndex,
                    size: 53,
                    padding: 0,
                    selectedColor: AppColors.darkOrange,
                    unselectedColor: AppColors.whiteOrange,
                    roundedEdges: const Radius.circular(6.0),
                    selectedGradientColor: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight,
                      colors: [
                        AppColors.darkOrange,
                        AppColors.whiteOrange,
                      ],
                    ),
                    unselectedGradientColor: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomLeft,
                      colors: [
                        AppColors.whiteOrange,
                        AppColors.whiteOrange,
                      ],
                    ),
                  ),
                  Center(
                    child: Text(
                      currentIndex.toString() + '/' + '3',
                      style: AppTextStyle.heading2.copyWith(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w400,
                          color: currentIndex < 2
                              ? AppColors.greyText
                              : AppColors.whiteText),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  pick() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      final file = result.files.first;

      setState(
        () {
          currentIndex++;
          fileName[currentIndex] = file.name;
        },
      );
    } else {
      return;
    }
  }
}
