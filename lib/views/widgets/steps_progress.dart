import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:taxi/constants/all.dart';

class StepProgress extends StatelessWidget {
  const StepProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int currentStep;
    int totalSteps;
    currentStep = 1;
    totalSteps = 3;
    return Stack(
      children: <Widget>[
        StepProgressIndicator(
          totalSteps: totalSteps,
          currentStep: currentStep,
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
          '$currentStep / $totalSteps',
          style: AppTextStyle.heading2.copyWith(
              fontSize: 17.0,
              fontWeight: FontWeight.w400,
              color:
                  currentStep < 2 ? AppColors.greyText : AppColors.whiteText),
        ))
      ],
    );
  }
}
