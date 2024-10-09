import Flutter
import UIKit
import shared

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      
      let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
      
      let greetChannel = FlutterMethodChannel(name: "com.mohaberabi.flutterkmp",
                                              binaryMessenger: controller.binaryMessenger)
      
      let greet = Greeting()
      let greetingMessage = greet.greet()

      greetChannel.setMethodCallHandler({
         [weak self] (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
         
          if call.method == "greet" {
              
              result(greetingMessage)
          } else {
              result(FlutterMethodNotImplemented)
          }
       })
      
      GeneratedPluginRegistrant.register(with: self)
      
      return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
