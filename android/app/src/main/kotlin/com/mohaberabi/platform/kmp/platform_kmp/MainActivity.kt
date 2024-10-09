package com.mohaberabi.platform.kmp.platform_kmp

import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import com.mohaberabi.kmp.platform.Greeting
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    companion object {
        private const val CHANNEL = "com.mohaberabi.flutterkmp"
        private const val GREET = "greet"

    }

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            CHANNEL
        ).setMethodCallHandler { call, result ->
            if (call.method == GREET) {
                val greeting = Greeting().greet()
                result.success(greeting)
            } else {
                result.notImplemented()
            }
        }
    }
}
