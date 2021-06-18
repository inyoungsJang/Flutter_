import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class AAA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            child: Neumorphic(
              style: NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  boxShape: NeumorphicBoxShape.roundRect(
                    BorderRadius.circular(12),
                  ),
                  depth: 10,
                  lightSource: LightSource.topLeft,
                  color: Colors.grey),
              child: Text("sss"),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          NeumorphicText(
            "DUBHE",
            style: NeumorphicStyle(depth: 1, color: Colors.blue),
            textStyle: NeumorphicTextStyle(fontSize: 60),
          ),
          NeumorphicIcon(
            Icons.add_alarm,
            size: 60,
          )
        ],
      ),
    );
  }
}
