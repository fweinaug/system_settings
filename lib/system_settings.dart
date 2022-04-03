import 'dart:async';

import 'package:flutter/services.dart';

class SystemSettings {
  static const MethodChannel _channel = const MethodChannel('system_settings');

  static Future<void> powerOptions() async {
    return await _channel.invokeMethod('power-options');
  }

  static Future<void> app() async {
    return await _channel.invokeMethod('app');
  }

  static Future<void> appNotifications() async {
    return await _channel.invokeMethod('app-notifications');
  }

  static Future<void> system() async {
    return await _channel.invokeMethod('system');
  }

  static Future<void> location() async {
    return await _channel.invokeMethod('location');
  }

  static Future<void> wifi() async {
    return await _channel.invokeMethod('wifi');
  }

  static Future<void> bluetooth() async {
    return await _channel.invokeMethod('bluetooth');
  }

  static Future<void> nfc() async {
    return await _channel.invokeMethod('nfc');
  }

  static Future<void> security() async {
    return await _channel.invokeMethod('security');
  }

  static Future<void> display() async {
    return await _channel.invokeMethod('display');
  }

  static Future<void> date() async {
    return await _channel.invokeMethod('date');
  }

  static Future<void> sound() async {
    return await _channel.invokeMethod('sound');
  }

  static Future<void> apps() async {
    return await _channel.invokeMethod('apps');
  }

  static Future<void> wireless() async {
    return await _channel.invokeMethod('wireless');
  }

  static Future<void> deviceInfo() async {
    return await _channel.invokeMethod('device-info');
  }

  static Future<void> dataUsage() async {
    return await _channel.invokeMethod('data-usage');
  }

  static Future<void> dataRoaming() async {
    return await _channel.invokeMethod('data-roaming');
  }

  static Future<void> locale() async {
    return await _channel.invokeMethod('locale');
  }

  static Future<void> defaultApps() async {
    return await _channel.invokeMethod('default-apps');
  }

  static Future<void> airplaneMode() async {
    return await _channel.invokeMethod('airplane-mode');
  }

  static Future<void> privacy() async {
    return await _channel.invokeMethod('privacy');
  }

  static Future<void> accessibility() async {
    return await _channel.invokeMethod('accessibility');
  }

  static Future<void> internalStorage() async {
    return await _channel.invokeMethod('internal-storage');
  }

  static Future<void> notificationPolicy() async {
    return await _channel.invokeMethod('notification-policy');
  }
}
