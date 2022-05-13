import 'package:flutter/material.dart';
import 'package:taxi/constants/all.dart';
import 'package:taxi/views/screens/intro.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        textTheme: ThemeData().textTheme.apply(fontFamily: 'Lato'),
        colorScheme:
            ThemeData().colorScheme.copyWith(primary: AppColors.darkOrange),
      ),
      home: Welcome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
