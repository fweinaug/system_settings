import Flutter
import UIKit

public class SwiftSystemSettingsPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "system_settings", binaryMessenger: registrar.messenger())
    let instance = SwiftSystemSettingsPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      openSettings()
  }

  private func openSettings() {
    if let url = URL(string: UIApplication.openSettingsURLString) {
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
    }
  }
}
