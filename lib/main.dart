import 'package:flutter/material.dart';
import 'package:flutter_web_1/pages/device_info/flutter_exaple.dart';
import 'package:flutter_web_1/device_model2.dart';
import 'package:flutter_web_1/device_model3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: myColors[500],
      ),
      home: FlutterExample(),
    );
  }
}

const MaterialColor myColors = MaterialColor(_black, <int, Color>{
  50: Color(0xFF000000),
  100: Color(0xFF111111),
  200: Color(0xFF222222),
  300: Color(0xFF333333),
  400: Color(0xFF444444),
  500: Color(_black),
  600: Color(0xFF666666),
  700: Color(0xFF777777),
  800: Color(0xFF888888),
  900: Color(0xFF999999),
});

const int _black = 0xFFFFFFFF;
