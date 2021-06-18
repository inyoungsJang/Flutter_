import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Title Text"),
          RotatedBox(
            quarterTurns: 3,
            child: Icon(Icons.arrow_back),
          )
        ],
      ),
    );
  }
}
