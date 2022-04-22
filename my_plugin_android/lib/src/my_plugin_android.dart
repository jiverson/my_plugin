import 'dart:async';

import 'package:flutter/services.dart';
import 'package:my_plugin_platform_interface/my_plugin_platform_interface.dart';

class MyPluginAndroidPlatform extends MyPluginPlatform {
  static const _channel = MethodChannel('my_plugin');

  /// Sample [MethodChannel] invokation.
  static Future<String?> get platformVersion async {
    final version = await _channel.invokeMethod<String?>('getPlatformVersion');
    return version;
  }
}
