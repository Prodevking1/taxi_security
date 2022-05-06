import 'package:flutter/material.dart';

import 'package:taxi/constants/all.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    Key? key,
    this.title,
    this.icon,
    this.toScreen,
  }) : super(key: key);

  final String? title;
  final IconData? icon;
  final Widget? toScreen;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20.0),
          height: 40.0,
          width: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            border: Border.all(color: AppColors.grey),
          ),
          child: Center(
            child: GestureDetector(
              child: Icon(icon),
              onTap: () => Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (c, a1, a2) => toScreen!,
                  transitionDuration: const Duration(seconds: 0),
                ),
              ),
            ),
          ),
        ),
        Center(
          child: Text(
            title ?? '',
            style: AppTextStyle.heading2.copyWith(fontSize: 25.0),
          ),
        )
      ],
    );
  }
}
