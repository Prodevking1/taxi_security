import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:taxi/constants/all.dart';
import 'package:taxi/views/widgets/all.dart';

class StepProgress extends StatefulWidget {
  const StepProgress({Key? key}) : super(key: key);

  @override
  State<StepProgress> createState() => _StepProgressState();
}

class _StepProgressState extends State<StepProgress> {
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
          currentStep: const PickFile().currentState,
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
          const PickFile().currentState.toString() +
              '/' +
              totalSteps.toString(),
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
