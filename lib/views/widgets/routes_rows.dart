import 'package:flutter/material.dart';
import 'package:taxi/constants/all.dart';

class RouteRow extends StatelessWidget {
  const RouteRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height / 6.0,
      width: 295.0,
      child: Column(
        children: <Widget>[
          Container(
            width: 292.0,
            padding: const EdgeInsets.only(bottom: 25.0),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppColors.grey, width: 2),
              ),
            ),
            child: Stack(
              children: <Widget>[
                Image.asset('assets/images/route.png'),
                Container(
                  padding: EdgeInsets.only(left: size.width / 4.0),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      'Bingerville - Koumassi',
                      style: AppTextStyle.heading2.copyWith(
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackText,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: size.width / 4.0, top: size.height / 25.0),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      'Client - #11425',
                      style: AppTextStyle.heading2.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackText,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: size.width / 4.0, top: size.height / 14.0),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      '12 sam 2002',
                      style: AppTextStyle.heading2.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackText,
                        fontSize: 16.0,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
