# system_settings

[![pub package](https://img.shields.io/pub/v/system_settings.svg)](https://pub.dev/packages/system_settings)

Flutter plugin to open system and app settings from an iOS and Android app.

On Android, this plugin supports various system setting pages as well as the app info and app notification settings page.

On iOS, this plugin will always open the app settings page, if any settings have been defined via a `SettingsBundle`. If not, the settings app will open with the home page. Unfortunately, this is the only way that complies with Apple's guidelines for the App Store.

## Getting Started

Add this to your package's pubspec.yaml file:

```
dependencies:
  system_settings: 1.0.0
```

Next, import the package into your dart code:

```dart
import 'package:system_settings/system_settings.dart';
```

## Example

Example which opens the app settings:

```dart
Widget build(BuildContext context) {
    return RaisedButton(
        onPressed: SystemSettings.app,
        child: Text('Open app settings'),
    );
}
```
