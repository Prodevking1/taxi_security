import 'package:flutter/material.dart';
import '../../constants/all.dart';

class RoundedCard extends StatelessWidget {
  const RoundedCard({
    Key? key,
    this.bgColor,
    this.child,
  }) : super(key: key);

  final Color? bgColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 325,
      height: 179,
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        color: bgColor ?? AppColors.cardColor,
        child: child,
      ),
    );
  }
}
