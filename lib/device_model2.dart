import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';

class DeviceModel2 extends StatefulWidget {
  @override
  _DeviceModel2State createState() => _DeviceModel2State();
}

class _DeviceModel2State extends State<DeviceModel2> {
  String deviceName;
  String info;

  Future<void> _check() async {
    DeviceInfoPlugin deviceInfoPlugin;

    if (Platform.isAndroid) {
      AndroidDeviceInfo androidDeviceInfo = await deviceInfoPlugin.androidInfo
          .catchError((err) => AndroidDeviceInfo.fromMap({'model': "NULL AND"}),
              test: (obj) => true);
      print("Running on ANDROID/ ID : ${androidDeviceInfo.id}");
      print("Running on ANDROID/ ANDROID ID : ${androidDeviceInfo.androidId}");

      setState(() {
        this.info =
            "러닝 온 안드로이드 : ${androidDeviceInfo.androidId ?? "AND Model Not Found"}";
      });
      deviceName = androidDeviceInfo.id;
    } else if (Platform.isIOS) {
      IosDeviceInfo iosDeviceInfo = await deviceInfoPlugin.iosInfo.catchError(
          (err) => IosDeviceInfo.fromMap({'machine': "NULL IOS"}),
          test: (obj) => true);
      print("Rrnning in IOS/ MACHINE : ${iosDeviceInfo.utsname.machine}");
    }
  }

  @override
  void initState() {
    Future(this._check);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Device Info "),
            Text("My Device name : $deviceName"),
          ],
        ),
      ),
    );
  }
}
