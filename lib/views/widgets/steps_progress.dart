import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class StepProgress extends StatelessWidget {
  const StepProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const StepProgressIndicator(
      totalSteps: 3,
      currentStep: 1,
      size: 53,
      padding: 0,
      selectedColor: Colors.yellow,
      unselectedColor: Colors.cyan,
      roundedEdges: Radius.circular(10),
      selectedGradientColor: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Colors.yellowAccent, Colors.deepOrange],
      ),
      unselectedGradientColor: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Colors.black, Colors.blue],
      ),
    );
  }
}
