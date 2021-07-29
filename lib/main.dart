import 'package:bmi/screens/result_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/main_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'BMI',
    initialRoute: '/',
    routes: {
      '/': (context) => MainScreen(),
      'result_screen': (context) => ResultPage()
    },
  ));
}
