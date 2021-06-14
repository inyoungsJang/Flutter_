import 'package:flutter/material.dart';

class DeskTopMain extends StatefulWidget {
  @override
  _DeskTopMainState createState() => _DeskTopMainState();
}

class _DeskTopMainState extends State<DeskTopMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Text("난 지금 데스크탑이야"),
      ),
    );
  }
}
