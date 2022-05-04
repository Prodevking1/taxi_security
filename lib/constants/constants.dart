import 'package:flutter/material.dart';

class AppColors {
  /* Colors */
  static Color darkOrange = const Color.fromRGBO(183, 65, 14, 1);
  static Color red = const Color.fromRGBO(189, 25, 25, 1);
  static Color blackText = Colors.black;
  static Color whiteText = Colors.white;
  static Color greyText = const Color.fromRGBO(82, 82, 82, 1);
  static Color grey = const Color.fromRGBO(194, 194, 194, 1);
  static Color cardColor = const Color.fromRGBO(240, 240, 240, 1);

  /* Fonts */
  static TextStyle heading2 = const TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
    fontFamily: 'Lato',
    color: Colors.black,
  );
}

SizedBox space(height) {
  return SizedBox(height: height);
}

/* Column inputField(String text, Icon icon, [int? passwordField]) {
  return Column(
    children: <Widget>[
      Container(
        width: 325.0,
        height: 49.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(color: grey),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(borderSide: BorderSide.none),
            hintText: text,
            hintStyle: heading2.copyWith(
                color: grey, fontSize: 15.0, fontWeight: FontWeight.w400),
            prefixIcon: icon,
          ),
          obscureText: passwordField == 1 ? true : false,
        ),
      ),
      space(10.0),
    ],
  );
}

//row card pour les settings
Column rowSetting(context, Widget prefixICon, String title, Widget routeNAme) {
  return Column(
    children: <Widget>[
      Container(
        margin: const EdgeInsets.only(
          left: 30.0,
        ),
        width: 350.0,
        height: 59.0,
        child: Card(
          color: cardColor,
          child: Stack(
            children: <Widget>[
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => routeNAme)));
                  },
                  icon: prefixICon),
              Container(
                margin: const EdgeInsets.only(left: 50.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => routeNAme)));
                  },
                  child: Text(
                    title,
                    style: heading2.copyWith(
                        fontSize: 18.0,
                        color: blackText,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 310.0, top: 15.0),
                child: chevonRight,
              ),
            ],
          ),
        ),
      ),
      space(10.0),
    ],
  );
}

Align historyField(String dtae, String type, String prix, width) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Stack(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(left: 38.0, top: 30.0),
          child: Text(
            'Sam 26/03/22',
            style:
                heading2.copyWith(fontSize: 18.0, fontWeight: FontWeight.w400),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 38.0, top: 60.0),
          child: Text(
            'Abonnement de 14 jours',
            style: heading2.copyWith(
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: width / 1.5, top: 60.0),
          child: Text(
            '5 500 F CFA',
            style: heading2.copyWith(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    ),
  );
} */
