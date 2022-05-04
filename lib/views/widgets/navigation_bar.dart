import 'package:taxi/utils/constants.dart';

import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    Key? key,
    required this.title,
    this.icon,
  }) : super(key: key);

  final String? title;
  final IconData? icon;

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
            border: Border.all(color: ThemeConfig.grey),
          ),
          child: Center(
            child: GestureDetector(
              child: Icon(icon),
              onTap: () {},
            ),
          ),
        ),
        Center(
          child: Text(
            title!,
            style: ThemeConfig.heading2.copyWith(fontSize: 25.0),
          ),
        )
      ],
    );
  }
}
