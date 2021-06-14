import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DeviceModel3 extends StatefulWidget {
  @override
  _DeviceModel3State createState() => _DeviceModel3State();
}

class _DeviceModel3State extends State<DeviceModel3> {
  String info;
  String deviceInfo;
  Future<String> getDeviceInfo() async {
    final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

    try {
      if (Platform.isAndroid) {
        AndroidDeviceInfo androidDeviceInfo =
            await deviceInfoPlugin.androidInfo;

        info = androidDeviceInfo.androidId;
      } else if (Platform.isIOS) {
        IosDeviceInfo iosDeviceInfo = await deviceInfoPlugin.iosInfo;
        info = iosDeviceInfo.model;
      }
    } on PlatformException {
      print("false");
    }
    return info;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Device Info Android : $info"),
          ],
        ),
      ),
    );
  }
}
