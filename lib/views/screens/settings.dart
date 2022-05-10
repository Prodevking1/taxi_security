import 'package:flutter/material.dart';
import 'package:taxi/constants/all.dart';
import 'package:taxi/views/screens/all.dart';
import 'package:taxi/views/widgets/all.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.whiteText,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            space(size.height / 10.0),
            const Navbar(
              title: 'Paramètres',
              icon: AppIcons.close,
              toScreen: Homepage(),
              iconBorder: true,
            ),
            space(size.height / 15.0),
            const SettingRow(
              text: 'Contacter le support',
              prefixIcon: AppIcons.chathelp,
            ),
            const SettingRow(
              text: 'Mes informations',
              prefixIcon: AppIcons.details,
            ),
            const SettingRow(
              text: 'Mon abonnement',
              prefixIcon: AppIcons.details,
              toScreen: Subscription(),
            ),
            const SettingRow(
              text: 'Termes et Conditions',
              prefixIcon: AppIcons.file,
            ),
            const SettingRow(
              text: 'Déconnexion',
              prefixIcon: AppIcons.signoout,
              toScreen: Login(),
            ),
          ],
        ),
      ),
    );
  }
}
