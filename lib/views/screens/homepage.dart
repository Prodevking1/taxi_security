import 'package:flutter/material.dart';
import 'package:taxi/constants/all.dart';
import 'package:taxi/views/screens/all.dart';
import 'package:taxi/views/widgets/all.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.whiteText,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          space(size.height / 10.0),
          // ignore: avoid_unnecessary_containers
          Container(
            child: Column(
              children: <Widget>[
                Header(
                  lefText: 'Sylvain',
                  gap: size.width / 1.6,
                  icon1: const Icon(AppIcons.idwallet),
                  toScreen1: const Id(),
                  toScreen2: const Settings(),
                  icon2: const Icon(AppIcons.settings),
                ),
              ],
            ),
          ),
          space(size.height / 25 + .0),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              children: <Widget>[
                Column(
                  children: const <Widget>[
                    RouteRow(),
                    RouteRow(),
                    RouteRow(),
                    RouteRow(),
                    RouteRow(),
                    RouteRow(),
                    RouteRow(),
                    RouteRow(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
