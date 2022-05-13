import 'package:flutter/material.dart';
import 'package:taxi/constants/all.dart';

class HistoryDetails extends StatelessWidget {
  const HistoryDetails({Key? key, this.payDate, this.type, this.price})
      : super(key: key);

  final String? payDate;
  final String? type;
  final int? price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.centerLeft,
      child: FittedBox(
        fit: BoxFit.contain,
        child: Stack(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 30.0, top: 30.0),
              child: Text(
                payDate ?? 'Sam 26/03/22',
                style: AppTextStyle.heading2
                    .copyWith(fontSize: 18.0, fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 38.0, top: 60.0),
              child: Text(
                type ?? 'Abonnement de 14 jours',
                style: AppTextStyle.heading2.copyWith(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: size.width / 1.47, top: 60.0),
              child: Text(
                price.toString() + ' F CFA',
                style: AppTextStyle.heading2.copyWith(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
