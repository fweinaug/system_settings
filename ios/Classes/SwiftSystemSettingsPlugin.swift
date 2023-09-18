import Flutter
import UIKit

public class SwiftSystemSettingsPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "system_settings", binaryMessenger: registrar.messenger())
    let instance = SwiftSystemSettingsPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      openSettings(call.method)
  }

  private func openSettings(_ method: String) {
    var url = URL(string: UIApplication.openSettingsURLString)

    switch method {
      case "app-notifications":
        if #available(iOS 16, *) {
          url = URL(string: UIApplication.openNotificationSettingsURLString)
        }
        if #available(iOS 15.4, *) {
          url = URL(string: UIApplicationOpenNotificationSettingsURLString)
        }
      default:
        break
    }

    if let url = url {
      if #available(iOS 10.0, *) {
          UIApplication.shared.open(url, options: [:], completionHandler: nil)
      } else {
          UIApplication.shared.openURL(url)
      }
    }
    
  }
}
