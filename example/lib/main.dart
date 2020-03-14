import 'package:flutter/material.dart';
import 'package:system_settings/system_settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: ListView(
            padding: EdgeInsets.all(20.0),
            children: <Widget>[
              RaisedButton(
                child: Text('App info'),
                onPressed: () => SystemSettings.app(),
              ),
              RaisedButton(
                child: Text('App notifications'),
                onPressed: () => SystemSettings.appNotifications(),
              ),
              RaisedButton(
                child: Text('Settings'),
                onPressed: () => SystemSettings.system(),
              ),
              RaisedButton(
                child: Text('Location'),
                onPressed: () => SystemSettings.location(),
              ),
              RaisedButton(
                child: Text('Wi-Fi'),
                onPressed: () => SystemSettings.wifi(),
              ),
              RaisedButton(
                child: Text('Bluetooth'),
                onPressed: () => SystemSettings.bluetooth(),
              ),
              RaisedButton(
                child: Text('Security'),
                onPressed: () => SystemSettings.security(),
              ),
              RaisedButton(
                child: Text('Display'),
                onPressed: () => SystemSettings.display(),
              ),
              RaisedButton(
                child: Text('Date & time'),
                onPressed: () => SystemSettings.date(),
              ),
              RaisedButton(
                child: Text('Sound'),
                onPressed: () => SystemSettings.sound(),
              ),
              RaisedButton(
                child: Text('Apps'),
                onPressed: () => SystemSettings.apps(),
              ),
              RaisedButton(
                child: Text('Network & internet'),
                onPressed: () => SystemSettings.wireless(),
              ),
              RaisedButton(
                child: Text('Device info'),
                onPressed: () => SystemSettings.deviceInfo(),
              ),
              RaisedButton(
                child: Text('Data usage'),
                onPressed: () => SystemSettings.dataUsage(),
              ),
              RaisedButton(
                child: Text('Data roaming'),
                onPressed: () => SystemSettings.dataRoaming(),
              ),
              RaisedButton(
                child: Text('Locale'),
                onPressed: () => SystemSettings.locale(),
              ),
              RaisedButton(
                child: Text('Default apps'),
                onPressed: () => SystemSettings.defaultApps(),
              ),
              RaisedButton(
                child: Text('Airplane/offline mode'),
                onPressed: () => SystemSettings.airplaneMode(),
              ),
              RaisedButton(
                child: Text('Privacy'),
                onPressed: () => SystemSettings.privacy(),
              ),
              RaisedButton(
                child: Text('Accessibility'),
                onPressed: () => SystemSettings.accessibility(),
              ),
              RaisedButton(
                child: Text('Internal storage'),
                onPressed: () => SystemSettings.internalStorage(),
              ),
              RaisedButton(
                child: Text('Notification policy / DND'),
                onPressed: () => SystemSettings.notificationPolicy(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
