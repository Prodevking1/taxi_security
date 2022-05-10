import 'package:flutter/material.dart';
import 'package:taxi/constants/all.dart';
import 'package:taxi/views/screens/all.dart';
import 'package:taxi/views/widgets/all.dart';
import 'package:taxi/views/widgets/history_row.dart';

class Subscription extends StatelessWidget {
  const Subscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteText,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            space(size.height / 16.0),
            const Navbar(
              title: 'Abonnement',
              iconBorder: true,
              icon: AppIcons.close,
              toScreen: Settings(),
            ),
            space(size.height / 20.0),
            const SubscriptionCard(expiryDate: '10/02/2021'),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.only(left: 30.0, top: 25.0),
                child: Text(
                  'Dernières transactions',
                  style: AppTextStyle.heading2
                      .copyWith(fontSize: 20.0, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  const HistoryDetails(
                    payDate: 'Lun 12/02/2022',
                    type: 'Abonnement de 14 jours',
                    price: 5500,
                  ),
                  const HistoryDetails(
                    payDate: 'sam 12/06/2022',
                    type: 'Abonnement de 30 jours',
                    price: 10000,
                  ),
                  const HistoryDetails(
                    payDate: 'Lun 12/02/2022',
                    type: 'Abonnement de 14 jours',
                    price: 5500,
                  ),
                  const HistoryDetails(
                    payDate: 'sam 12/06/2022',
                    type: 'Abonnement de 30 jours',
                    price: 10000,
                  ),
                  const HistoryDetails(
                    payDate: 'Lun 12/02/2022',
                    type: 'Abonnement de 14 jours',
                    price: 5500,
                  ),
                  const HistoryDetails(
                    payDate: 'sam 12/06/2022',
                    type: 'Abonnement de 30 jours',
                    price: 10000,
                  ),
                  const HistoryDetails(
                    payDate: 'Lun 12/02/2022',
                    type: 'Abonnement de 14 jours',
                    price: 5500,
                  ),
                  const HistoryDetails(
                    payDate: 'sam 12/06/2022',
                    type: 'Abonnement de 30 jours',
                    price: 10000,
                  ),
                  const HistoryDetails(
                    payDate: 'Lun 12/02/2022',
                    type: 'Abonnement de 14 jours',
                    price: 5500,
                  ),
                  const HistoryDetails(
                    payDate: 'sam 12/06/2022',
                    type: 'Abonnement de 30 jours',
                    price: 10000,
                  ),
                  const HistoryDetails(
                    payDate: 'Lun 12/02/2022',
                    type: 'Abonnement de 14 jours',
                    price: 5500,
                  ),
                  const HistoryDetails(
                    payDate: 'sam 12/06/2022',
                    type: 'Abonnement de 30 jours',
                    price: 10000,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
