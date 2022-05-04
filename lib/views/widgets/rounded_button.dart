import 'package:flutter/material.dart';
import 'package:taxi/utils/constants.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    this.onPressed,
    this.buttonColor,
    this.buttonBorder,
    this.buttonText,
    this.textColor,
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
          color: buttonColor ?? ThemeConfig.darkOrange,
        ),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(buttonBorder ?? 6.0),
        color: buttonColor ?? ThemeConfig.darkOrange,
        child: TextButton(
          onPressed: onPressed,
          child: Center(
            child: Text(
              'text',
              style:
                  ThemeConfig.heading2.copyWith(color: ThemeConfig.darkOrange),
            ),
          ),
        ),
      ),
    );
  }
}

/* Container button(context, String text, Color txtcolor, Color bgcolor,
    double size, Widget routeName) {
  return Container(
    width: 325.0,
    height: 53.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6.0),
      border: Border.all(
        // ignore: unrelated_type_equality_checks
        color: bgcolor == 'whiteText' ? whiteText : darkOrange,
      ),
    ),
    child: Material(
      borderRadius: BorderRadius.circular(6.0),
      color: bgcolor,
      child: TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => routeName)));
        },
        child: Center(
          child: Text(
            text,
            style: heading2.copyWith(color: txtcolor),
          ),
        ),
      ),
    ),
  );
} */

