import 'package:flutter/material.dart';
import 'package:taxi/views/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Lato'),
      home: Welcome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
