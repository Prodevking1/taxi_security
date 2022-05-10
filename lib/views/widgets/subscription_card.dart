import 'package:flutter/material.dart';
import 'package:taxi/constants/all.dart';

class SubscriptionCard extends StatelessWidget {
  const SubscriptionCard({Key? key, this.expiryDate}) : super(key: key);

  final String? expiryDate;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      elevation: 5.0,
      color: AppColors.cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Container(
          width: 325.0,
          height: 142.0,
          margin: const EdgeInsets.only(left: 20.0),
          child: Stack(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(20.0),
                child: Text(
                  'Abonnement inactif',
                  style: AppTextStyle.heading2.copyWith(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25.0, left: size.width / 1.5),
                child: Container(
                  width: 14,
                  height: 14,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.red,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 19.0, top: 50.0),
                child: Text(
                  'Expiré le ' + (expiryDate ?? '02/03/2022'),
                  style: AppTextStyle.heading2.copyWith(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 12.0, top: 90.0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Renouveler',
                    style: AppTextStyle.heading2
                        .copyWith(fontSize: 18.0, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: size.width / 3.2, top: 105.0),
                child: const Icon(AppIcons.chevronright),
              ),
              Container(
                margin: EdgeInsets.only(left: size.width / 2.1, top: 90.0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    (expiryDate ?? 'jj/mm/aaaa'),
                    style: AppTextStyle.heading2
                        .copyWith(fontSize: 16.0, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
