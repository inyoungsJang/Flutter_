import 'package:flutter/material.dart';

class MobileMain extends StatefulWidget {
  @override
  _MobileMainState createState() => _MobileMainState();
}

class _MobileMainState extends State<MobileMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.green,
          child: Text("난 지금 모바일이당"),
        ),
      ),
    );
  }
}
