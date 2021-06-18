import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_1/egipt/egypt.dart';
import 'package:flutter_web_1/pages/desktop_/d_main.dart';
import 'package:flutter_web_1/pages/mobile_/m_main.dart';

class FlutterExample extends StatefulWidget {
  //FlutterExample({Key key}) : super(key: key);
  @override
  _FlutterExampleState createState() => _FlutterExampleState();
}

class _FlutterExampleState extends State<FlutterExample> {
  bool deviceValue = true;
  // String im_device;

  @override
  void initState() {
    super.initState();
    getModel();
  }

  Future<void> getModel() async {
    DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    if (kIsWeb) {
      // 웹으로 접속했을때 기기정보들 얻어올 수 있음
      print("im web browser");
      WebBrowserInfo webBrowserInfo = await deviceInfoPlugin.webBrowserInfo;
      setState(() {
        deviceValue = true;
      });
    } else if (Platform.isAndroid) {
      // 모바일로 접속하였을때 안드로이드 기기정보들을 얻어올 수 있음
      print("im android");
      AndroidDeviceInfo androidDeviceInfo = await deviceInfoPlugin.androidInfo;
      setState(() {
        deviceValue = false;
      });
    } else if (Platform.isIOS) {
      // 모바일로 접속하였을때 iOS의 기기정보들을 얻어올 수 있음
      print("im ios");
      IosDeviceInfo iosDeviceInfo = await deviceInfoPlugin.iosInfo;
      setState(() {
        deviceValue = false;
      });
    } else {
      setState(() {
        deviceValue = true;
      });
    }
    //return deviceValue;
  }

  Widget device() {
    if (deviceValue) {
      // 웹 위젯
      return EgyptPage();
    } else {
      // 모바일 위젯
      return SafeArea(child: EgyptPage());
      //MobileMain();
    }
  }

  @override
  Widget build(BuildContext context) {
    print("deviceValue : $deviceValue");
    return device();
  }
}
