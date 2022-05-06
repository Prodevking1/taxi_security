import 'package:flutter/material.dart';
import 'package:taxi/constants/all.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    this.buttonColor,
    this.buttonBorder,
    required this.buttonText,
    this.textColor,
    this.toScreen,
  }) : super(key: key);

  final Color? buttonColor;
  final double? buttonBorder;
  final String? buttonText;
  final Color? textColor;
  final Widget? toScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325.0,
      height: 53.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(buttonBorder ?? 6.0),
        border: Border.all(
          color: textColor ?? AppColors.whiteText,
        ),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(buttonBorder ?? 6.0),
        color: buttonColor ?? AppColors.darkOrange,
        child: TextButton(
          onPressed: () => Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (c, a1, a2) => toScreen!,
              transitionDuration: const Duration(seconds: 0),
            ),
          ),
          child: Center(
            child: Text(
              buttonText!,
              style: AppTextStyle.heading2
                  .copyWith(color: textColor ?? AppColors.whiteText),
            ),
          ),
        ),
      ),
    );
  }
}
