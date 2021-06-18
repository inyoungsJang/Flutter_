import 'package:animated_styled_widget/animated_styled_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_1/egipt/egypt.dart';
import 'package:flutter_web_1/egipt/main_text.dart';
import 'package:flutter_web_1/style/style_button_page.dart';

class DeskTopMain extends StatefulWidget {
  //DeskTopMain({Key key}) : super(key: key);

  @override
  _DeskTopMainState createState() => _DeskTopMainState();
}

class _DeskTopMainState extends State<DeskTopMain> {
  Style styledBtnStyle = Style(
    alignment: Alignment.center,
    width: 50.toVHLength,
    height: 50.toPercentLength,
    margin: EdgeInsets.symmetric(vertical: 10),
    backgroundDecoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.amber, Colors.pink])),
    shapeBorder: RoundedRectangleShapeBorder(
        borderRadius:
            DynamicBorderRadius.all(DynamicRadius.circular(15.toPXLength))),
  );

  Style styledBtnHover = Style(
    alignment: Alignment.center,
    width: 50.toVHLength,
    height: 50.toPercentLength,
    margin: EdgeInsets.symmetric(vertical: 10),
    backgroundDecoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.blue, Colors.red])),
    shapeBorder: RoundedRectangleShapeBorder(
        borderRadius:
            DynamicBorderRadius.all(DynamicRadius.circular(15.toPXLength))),
  );

  // Widget makeStyleBtn() {
  //   StyledButton(
  //       key: UniqueKey(),
  //       style: styledBtnStyle,
  //       child: Text(
  //         "Style Button! \nHover Me",
  //         textAlign: TextAlign.center,
  //       ),
  //       duration: const Duration(microseconds: 200),
  //       curve: Curves.linear);

  //   StyledButton.builder(
  //       key: UniqueKey(),
  //       style: styledBtnHover,
  //       builder: (context, state) {
  //         Widget child;
  //         switch (state) {
  //           case StyledComponentState.pressed:
  //             child = Text("State", key: UniqueKey());
  //             break;
  //           default:
  //             child = Text("default", key: UniqueKey());
  //             break;
  //         }
  //         return AnimatedSwitcher(
  //           duration: Duration(microseconds: 200),
  //           child: child,
  //         );
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.amber,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [EgyptPage()],
            ),
          ),
        ),
      ),
    );
  }
}
