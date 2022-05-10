import 'package:flutter/material.dart';

import '../../constants/all.dart';

class InputField extends StatefulWidget {
  const InputField({
    Key? key,
    this.inputRadius,
    this.borderColor,
    required this.hintText,
    this.hintStyle,
    this.prefixIcon,
    this.passwordField,
    this.keyboardType,
    required this.textEditController,
    required this.inputType,
  }) : super(key: key);
  final double? inputRadius;
  final Color? borderColor;
  final String? hintText;
  final TextStyle? hintStyle;
  final Icon? prefixIcon;
  final bool? passwordField;
  final TextInputType? keyboardType;
  final TextEditingController? textEditController;
  final TextInputType inputType;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool _isValidate = true;
  String validationMessage = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 325.0,
          height: 49.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.inputRadius ?? 6.0),
            border: Border.all(color: widget.borderColor ?? AppColors.grey),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(borderSide: BorderSide.none),
              hintText: widget.hintText,
              hintStyle: AppTextStyle.heading2.copyWith(
                  color: widget.borderColor ?? AppColors.grey,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400),
              prefixIcon: widget.prefixIcon,
            ),
            keyboardType: widget.keyboardType,
            obscureText: widget.passwordField ?? false,
            controller: widget.textEditController,
          ),
        ),
        space(12.0),
      ],
    );
  }

  void checkValidation(String textFieldValue) {
    if (widget.inputType == InputType.Default) {
      //default
      _isValidate = textFieldValue.isNotEmpty;
      validationMessage = widget.errorMessage ?? 'Le champ est vide.';
    } else if (widget.inputType == InputType.Email) {
      //email validation
      _isValidate = RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(textFieldValue);
      validationMessage = widget.errorMessage ?? 'Email is not valid';
    } else if (widget.inputType == InputType.Number) {
      //contact number validation
      _isValidate = textFieldValue.length == widget.maxLength;
      validationMessage = widget.errorMessage ?? 'Contact Number is not valid';
    } else if (widget.inputType == InputType.Password) {
      //password validation
      _isValidate = RegExp(
              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
          .hasMatch(textFieldValue);
      validationMessage = widget.errorMessage ?? 'Password is not valid';
    } else if (widget.inputType == InputType.PaymentCard) {
      //payment card validation
    }
  }
}
