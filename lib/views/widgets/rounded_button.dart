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
    this.formKey,
  }) : super(key: key);

  final Color? buttonColor;
  final double? buttonBorder;
  final String? buttonText;
  final Color? textColor;
  final Widget? toScreen;
  final GlobalKey<FormState>? formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
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
            onPressed: () => _submit(context),
            child: Center(
              child: Text(
                buttonText!,
                style: AppTextStyle.heading2
                    .copyWith(color: textColor ?? AppColors.whiteText),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _submit(context) {
    if (formKey!.currentState!.validate()) {
      Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (c, a1, a2) => toScreen!,
          transitionDuration: const Duration(seconds: 0),
        ),
      );
    }
  }
}
