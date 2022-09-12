import 'package:flutter/material.dart';

import 'bmi/BMI.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Easy Tourism ',
      theme: ThemeData(
        fontFamily: 'ElMessiri',
        primarySwatch: Colors.blue,
      ),
      home: BmiScreen(),
    );
  }
}
