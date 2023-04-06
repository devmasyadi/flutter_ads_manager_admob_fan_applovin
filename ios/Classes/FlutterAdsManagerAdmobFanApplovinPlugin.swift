import Flutter
import UIKit

public class FlutterAdsManagerAdmobFanApplovinPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_ads_manager_admob_fan_applovin", binaryMessenger: registrar.messenger())
    let instance = FlutterAdsManagerAdmobFanApplovinPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
