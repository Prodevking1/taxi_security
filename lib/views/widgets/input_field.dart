import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/all.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    this.inputRadius,
    this.borderColor,
    this.hintText,
    this.hintStyle,
    this.prefixIcon,
    this.passwordField,
    this.keyboardType,
  }) : super(key: key);
  final double? inputRadius;
  final Color? borderColor;
  final String? hintText;
  final TextStyle? hintStyle;
  final Icon? prefixIcon;
  final bool? passwordField;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 325.0,
          height: 49.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(inputRadius ?? 6.0),
            border: Border.all(color: borderColor ?? AppColors.grey),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(borderSide: BorderSide.none),
              hintText: hintText,
              hintStyle: AppTextStyle.heading2.copyWith(
                  color: borderColor ?? AppColors.grey,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400),
              prefixIcon: prefixIcon,
            ),
            keyboardType: keyboardType,
            obscureText: passwordField ?? false,
          ),
        ),
        space(12.0),
      ],
    );
  }
}
