import 'package:flutter/material.dart';
import 'package:taxi/pages/settings.dart';
import 'package:taxi/ressources/themes.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List title = [
      'Bingerville - Koumassi',
      "Client - #11425",
      'Sam 26/03/22',
    ];
    return Scaffold(
      backgroundColor: whiteText,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            space(size.height / 10.0),
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              child: Stack(
                children: <Widget>[
                  Text(
                    'Hello Sylvain',
                    style: heading2.copyWith(
                        height: 1.6,
                        color: blackText,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: size.width / 1.55,
                    ),
                    child: Row(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: id,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Settings(),
                              ),
                            );
                          },
                          icon: settings,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            space(size.height / 15.0),
            SizedBox(
              width: 295.0,
              child: Container(
                width: 292.0,
                padding: const EdgeInsets.only(bottom: 25.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: grey, width: 2),
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    Image.asset('assets/images/route.png'),
                    Container(
                      padding: EdgeInsets.only(left: size.width / 4.0),
                      child: Text(
                        'Bingerville - Koumassi',
                        style: heading2.copyWith(
                          fontWeight: FontWeight.w500,
                          color: blackText,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: size.width / 4.0, top: size.height / 25.0),
                      child: Text(
                        'Client - #11425',
                        style: heading2.copyWith(
                          fontWeight: FontWeight.w400,
                          color: blackText,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: size.width / 4.0, top: size.height / 14.0),
                      child: Text(
                        title[2],
                        style: heading2.copyWith(
                          fontWeight: FontWeight.w400,
                          color: blackText,
                          fontSize: 16.0,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            space(15.0),
            SizedBox(
              width: 295.0,
              child: Container(
                width: 292.0,
                padding: const EdgeInsets.only(bottom: 25.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: grey, width: 2),
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    Image.asset('assets/images/route.png'),
                    Container(
                      padding: EdgeInsets.only(left: size.width / 4.0),
                      child: Text(
                        'Bingerville - Koumassi',
                        style: heading2.copyWith(
                          fontWeight: FontWeight.w500,
                          color: blackText,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: size.width / 4.0, top: size.height / 25.0),
                      child: Text(
                        'Client - #11425',
                        style: heading2.copyWith(
                          fontWeight: FontWeight.w400,
                          color: blackText,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: size.width / 4.0, top: size.height / 14.0),
                      child: Text(
                        title[2],
                        style: heading2.copyWith(
                          fontWeight: FontWeight.w400,
                          color: blackText,
                          fontSize: 16.0,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            space(15.0),
            SizedBox(
              width: 295.0,
              child: Container(
                width: 292.0,
                padding: const EdgeInsets.only(bottom: 25.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: grey, width: 2),
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    Image.asset('assets/images/route.png'),
                    Container(
                      padding: EdgeInsets.only(left: size.width / 4.0),
                      child: Text(
                        'Bingerville - Koumassi',
                        style: heading2.copyWith(
                          fontWeight: FontWeight.w500,
                          color: blackText,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: size.width / 4.0, top: size.height / 25.0),
                      child: Text(
                        'Client - #11425',
                        style: heading2.copyWith(
                          fontWeight: FontWeight.w400,
                          color: blackText,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: size.width / 4.0, top: size.height / 14.0),
                      child: Text(
                        title[2],
                        style: heading2.copyWith(
                          fontWeight: FontWeight.w400,
                          color: blackText,
                          fontSize: 16.0,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            space(15.0),
            SizedBox(
              width: 295.0,
              child: Container(
                width: 292.0,
                padding: const EdgeInsets.only(bottom: 25.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: grey, width: 2),
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    Image.asset('assets/images/route.png'),
                    Container(
                      padding: EdgeInsets.only(left: size.width / 4.0),
                      child: Text(
                        'Bingerville - Koumassi',
                        style: heading2.copyWith(
                          fontWeight: FontWeight.w500,
                          color: blackText,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: size.width / 4.0, top: size.height / 25.0),
                      child: Text(
                        'Client - #11425',
                        style: heading2.copyWith(
                          fontWeight: FontWeight.w400,
                          color: blackText,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: size.width / 4.0, top: size.height / 14.0),
                      child: Text(
                        title[2],
                        style: heading2.copyWith(
                          fontWeight: FontWeight.w400,
                          color: blackText,
                          fontSize: 16.0,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            space(15.0),
            SizedBox(
              width: 295.0,
              child: Container(
                width: 292.0,
                padding: const EdgeInsets.only(bottom: 25.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: grey, width: 2),
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    Image.asset('assets/images/route.png'),
                    Container(
                      padding: EdgeInsets.only(left: size.width / 4.0),
                      child: Text(
                        'Bingerville - Koumassi',
                        style: heading2.copyWith(
                          fontWeight: FontWeight.w500,
                          color: blackText,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: size.width / 4.0, top: size.height / 25.0),
                      child: Text(
                        'Client - #11425',
                        style: heading2.copyWith(
                          fontWeight: FontWeight.w400,
                          color: blackText,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: size.width / 4.0, top: size.height / 14.0),
                      child: Text(
                        title[2],
                        style: heading2.copyWith(
                          fontWeight: FontWeight.w400,
                          color: blackText,
                          fontSize: 16.0,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
