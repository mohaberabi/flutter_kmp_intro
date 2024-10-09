import 'package:flutter/services.dart';

abstract interface class KmpGreeting {
  static const _method = MethodChannel("com.mohaberabi.flutterkmp");

  static const _greetMethodName = "greet";

  static Future<String> getGreeting() async {
    try {
      final greet = await _method.invokeMethod(_greetMethodName);
      return greet as String? ?? "error";
    } catch (e, st) {
      return "error";
    }
  }
}
