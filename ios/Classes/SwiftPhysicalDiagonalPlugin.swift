import Flutter
import UIKit

public class SwiftPhysicalDiagonalPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "physical_diagonal", binaryMessenger: registrar.messenger())
    let instance = SwiftPhysicalDiagonalPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
          let scale = UIScreen.main.scale

          let ppi = scale * ((UIDevice.current.userInterfaceIdiom == .pad) ? 132 : 163);

          let width = UIScreen.main.bounds.size.width * scale
          let height = UIScreen.main.bounds.size.height * scale

          let horizontal = width / ppi, vertical = height / ppi;

          double diagonal = sqrt(pow(horizontal, 2) + pow(vertical, 2))
          let screenSize = String(format: "%0.01f", diagonal)
        result(diagonal)
  }
}
