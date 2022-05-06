import 'package:flutter/material.dart';

import '../../constants/all.dart';

class BottomLinks extends StatelessWidget {
  const BottomLinks({Key? key, this.left, this.right, this.toScreen})
      : super(key: key);

  final String? left;
  final String? right;
  final Widget? toScreen;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: FittedBox(
        fit: BoxFit.cover,
        child: Row(
          children: <Widget>[
            Text(
              left ?? '',
              style: AppTextStyle.heading2.copyWith(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  color: AppColors.greyText),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (c, a1, a2) => toScreen!,
                  transitionDuration: const Duration(seconds: 0),
                ),
              ),
              child: Text(
                right ?? '',
                style: AppTextStyle.heading2.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColors.darkOrange),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
