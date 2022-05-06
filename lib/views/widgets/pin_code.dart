import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../constants/all.dart';

class PinCode extends StatelessWidget {
  const PinCode({
    Key? key,
    this.inactiveColor,
    this.activeColor,
    this.height,
    this.width,
  }) : super(key: key);
  final Color? inactiveColor;
  final Color? activeColor;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 323.0,
      height: 51.0,
      child: PinCodeTextField(
        appContext: context,
        length: 4,
        onChanged: (value) {},
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(8.0),
          fieldHeight: height ?? 51.0,
          fieldWidth: width ?? 60.0,
          activeFillColor: Colors.white,
          inactiveColor: inactiveColor ?? AppColors.grey,
          activeColor: activeColor ?? AppColors.darkOrange,
        ),
      ),
    );
  }
}
