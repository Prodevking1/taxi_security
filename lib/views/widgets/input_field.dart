import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taxi/views/widgets/masked_input_formatter.dart';

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
    this.prefixText,
    this.errorMessage,
    this.validator,
  }) : super(key: key);
  final double? inputRadius;
  final Color? borderColor;
  final String? hintText;
  final TextStyle? hintStyle;
  final Icon? prefixIcon;
  final bool? passwordField;
  final TextInputType? keyboardType;
  final TextEditingController? textEditController;
  final InputType inputType;
  final String? errorMessage;
  final String? prefixText;
  final String? Function(String?)? validator;

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
          height: 55.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.inputRadius ?? 6.0),
            border: Border.all(color: widget.borderColor ?? AppColors.grey),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              errorText: _isValidate ? null : validationMessage,
              border: const OutlineInputBorder(borderSide: BorderSide.none),
              hintText: widget.hintText,
              hintStyle: AppTextStyle.heading2.copyWith(
                  color: widget.borderColor ?? AppColors.grey,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400),
              prefixIcon: widget.prefixIcon,
            ),
            keyboardType: getInputType(),
            obscureText: widget.passwordField ?? false,
            controller: widget.textEditController,
            cursorColor: AppColors.darkOrange,
            cursorHeight: 20.0,
            inputFormatters: [getFormatter()],
            onChanged: checkValidation,
            validator: widget.validator,
          ),
        ),
        space(15.0),
      ],
    );
  }

  void checkValidation(String textFieldValue) {
    if (widget.inputType == InputType.Default) {
      //default
      _isValidate = textFieldValue.length >= 3;
      validationMessage = widget.errorMessage ?? 'Trop court';
    } else if (widget.inputType == InputType.Email) {
      //email validation
      _isValidate = RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(textFieldValue);
      validationMessage = widget.errorMessage ?? 'E-mail invalide';
    } else if (widget.inputType == InputType.Phone) {
      //contact Phone validation
      _isValidate = textFieldValue.length == 10;
      validationMessage = widget.errorMessage ?? 'Numéro incorrect';
    } else if (widget.inputType == InputType.Password) {
      //password validation
      _isValidate = textFieldValue.length >= 6;
      validationMessage = widget.errorMessage ?? 'Mot de passe très faible';
    }
  }

  TextInputType getInputType() {
    switch (widget.inputType) {
      case InputType.Default:
        return TextInputType.text;

      case InputType.Email:
        return TextInputType.emailAddress;

      case InputType.Phone:
        return TextInputType.phone;

      default:
        return TextInputType.text;
    }
  }

  TextInputFormatter getFormatter() {
    if (widget.inputType == InputType.Phone) {
      return MaskedTextInputFormatter(
        mask: 'xx xx xx xx xx xx xx',
        separator: ' ',
      );
    } else {
      return TextInputFormatter.withFunction((oldValue, newValue) => newValue);
    }
  }
}

enum InputType {
  Default,
  Email,
  Phone,
  Password,
}
