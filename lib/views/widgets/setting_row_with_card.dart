import 'package:flutter/material.dart';
import 'package:taxi/constants/all.dart';

class SettingRow extends StatelessWidget {
  const SettingRow({
    Key? key,
    this.prefixIcon,
    this.suffixIcon,
    this.toScreen,
    this.text,
  }) : super(key: key);

  final IconData? prefixIcon;
  final Icon? suffixIcon;
  final Widget? toScreen;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: 350.0,
          height: 59.0,
          child: Card(
            color: AppColors.cardColor,
            child: Stack(
              children: <Widget>[
                IconButton(
                  icon: Icon(prefixIcon),
                  onPressed: () => Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (c, a1, a2) => toScreen!,
                      transitionDuration: const Duration(seconds: 0),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 50.0),
                  child: TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (c, a1, a2) => toScreen!,
                        transitionDuration: const Duration(seconds: 0),
                      ),
                    ),
                    child: Text(
                      text ?? '',
                      style: AppTextStyle.heading2.copyWith(
                          fontSize: 18.0,
                          color: AppColors.blackText,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 310.0, top: 15.0),
                  child: suffixIcon ?? const Icon(AppIcons.chevronright),
                ),
              ],
            ),
          ),
        ),
        space(10.0),
      ],
    );
  }
}
