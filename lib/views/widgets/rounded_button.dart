import 'package:flutter/material.dart';
import 'package:taxi/utils/constants.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    this.onPressed,
    required this.buttonColor,
    this.buttonBorder,
    required this.buttonText,
    required this.textColor,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final Color? buttonColor;
  final double? buttonBorder;
  final String? buttonText;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325.0,
      height: 53.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(buttonBorder ?? 6.0),
        border: Border.all(
          color: textColor ?? ThemeConfig.darkOrange,
        ),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(buttonBorder ?? 6.0),
        color: buttonColor ?? ThemeConfig.darkOrange,
        child: TextButton(
          onPressed: onPressed,
          child: Center(
            child: Text(
              buttonText!,
              style: ThemeConfig.heading2
                  .copyWith(color: textColor ?? ThemeConfig.darkOrange),
            ),
          ),
        ),
      ),
    );
  }
}
