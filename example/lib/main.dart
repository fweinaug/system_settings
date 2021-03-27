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
              ElevatedButton(
                child: Text('App info'),
                onPressed: () => SystemSettings.app(),
              ),
              ElevatedButton(
                child: Text('App notifications'),
                onPressed: () => SystemSettings.appNotifications(),
              ),
              ElevatedButton(
                child: Text('Settings'),
                onPressed: () => SystemSettings.system(),
              ),
              ElevatedButton(
                child: Text('Location'),
                onPressed: () => SystemSettings.location(),
              ),
              ElevatedButton(
                child: Text('Wi-Fi'),
                onPressed: () => SystemSettings.wifi(),
              ),
              ElevatedButton(
                child: Text('Bluetooth'),
                onPressed: () => SystemSettings.bluetooth(),
              ),
              ElevatedButton(
                child: Text('Security'),
                onPressed: () => SystemSettings.security(),
              ),
              ElevatedButton(
                child: Text('Display'),
                onPressed: () => SystemSettings.display(),
              ),
              ElevatedButton(
                child: Text('Date & time'),
                onPressed: () => SystemSettings.date(),
              ),
              ElevatedButton(
                child: Text('Sound'),
                onPressed: () => SystemSettings.sound(),
              ),
              ElevatedButton(
                child: Text('Apps'),
                onPressed: () => SystemSettings.apps(),
              ),
              ElevatedButton(
                child: Text('Network & internet'),
                onPressed: () => SystemSettings.wireless(),
              ),
              ElevatedButton(
                child: Text('Device info'),
                onPressed: () => SystemSettings.deviceInfo(),
              ),
              ElevatedButton(
                child: Text('Data usage'),
                onPressed: () => SystemSettings.dataUsage(),
              ),
              ElevatedButton(
                child: Text('Data roaming'),
                onPressed: () => SystemSettings.dataRoaming(),
              ),
              ElevatedButton(
                child: Text('Locale'),
                onPressed: () => SystemSettings.locale(),
              ),
              ElevatedButton(
                child: Text('Default apps'),
                onPressed: () => SystemSettings.defaultApps(),
              ),
              ElevatedButton(
                child: Text('Airplane/offline mode'),
                onPressed: () => SystemSettings.airplaneMode(),
              ),
              ElevatedButton(
                child: Text('Privacy'),
                onPressed: () => SystemSettings.privacy(),
              ),
              ElevatedButton(
                child: Text('Accessibility'),
                onPressed: () => SystemSettings.accessibility(),
              ),
              ElevatedButton(
                child: Text('Internal storage'),
                onPressed: () => SystemSettings.internalStorage(),
              ),
              ElevatedButton(
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
