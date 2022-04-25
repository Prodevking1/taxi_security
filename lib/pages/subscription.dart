import 'package:flutter/material.dart';
import 'package:taxi/pages/settings.dart';
import 'package:taxi/ressources/themes.dart';

class Subscription extends StatefulWidget {
  Subscription({Key? key}) : super(key: key);

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: whiteText,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            space(size.height / 10.0),
            Stack(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  height: 40.0,
                  width: 40.0,
                  child: Center(
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => Settings())));
                          },
                          icon: x)),
                ),
                Center(
                  child: Text(
                    'Mon abonnement',
                    style: heading2.copyWith(
                        fontSize: 25.0,
                        height: 1.5,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            space(size.height / 25.0),
            Card(
              color: cardColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: SizedBox(width: 325.0, height: 136.0),
            )
          ],
        ),
      ),
    );
  }

  /* lister un nouvel element dans la ListView */

}
