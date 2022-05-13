import 'package:flutter/material.dart';
import 'package:taxi/constants/all.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    this.lefText,
    this.gap,
    this.icon1,
    this.icon2,
    this.toScreen1,
    this.toScreen2,
  }) : super(key: key);
  final String? lefText;
  final Icon? icon1;
  final Icon? icon2;
  final double? gap;
  final Widget? toScreen1;
  final Widget? toScreen2;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30.0),
      child: Stack(
        children: <Widget>[
          Text(
            'Hello ' + (lefText ?? ''),
            style: AppTextStyle.heading2.copyWith(
                height: 1.6,
                color: AppColors.blackText,
                fontSize: 25.0,
                fontWeight: FontWeight.w500),
          ),
          Container(
            margin: EdgeInsets.only(
              left: gap!,
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 15.0),
              child: Row(
                children: <Widget>[
                  InkWell(
                    child: icon1,
                    onTap: () => Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (c, a1, a2) => toScreen1!,
                        transitionDuration: const Duration(seconds: 0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  InkWell(
                    child: icon2,
                    onTap: () => Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (c, a1, a2) => toScreen2!,
                        transitionDuration: const Duration(seconds: 0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
