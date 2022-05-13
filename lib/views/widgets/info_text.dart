import 'package:flutter/material.dart';
import 'package:taxi/constants/all.dart';

class Info extends StatelessWidget {
  const Info({
    Key? key,
    this.text1,
    this.text2,
  }) : super(key: key);

  final String? text1;
  final String? text2;

  @override
  Widget build(BuildContext context) {
    /* return Container(
              margin: const EdgeInsets.only(left: 35.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Vérification OTP',
                    style: heading2.copyWith(
                        fontSize: 25.0,
                        color: blackText,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            space(15.0),
            Container(
              margin: const EdgeInsets.only(left: 35.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Nous vous enverrons un code de \nvérification sur votre numéro",
                    style: heading2.copyWith(
                        fontSize: 16.0,
                        color: greyText,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ), */

    return Container(
      alignment: Alignment.bottomLeft,
      margin: const EdgeInsets.only(left: 35.0),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              text1 ?? '',
              style: AppTextStyle.heading2.copyWith(
                  fontSize: 25.0,
                  color: AppColors.blackText,
                  fontWeight: FontWeight.w600),
            ),
          ),
          space(15.0),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              text2 ?? '',
              style: AppTextStyle.heading2.copyWith(
                  fontSize: 16.0,
                  color: AppColors.blackText,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
