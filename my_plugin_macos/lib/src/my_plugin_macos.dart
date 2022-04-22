import 'dart:async';

import 'package:flutter/services.dart';
import 'package:my_plugin_platform_interface/my_plugin_platform_interface.dart';

class MyPluginMacosPlatform extends MyPluginPlatform {
  static const _channel = MethodChannel('my_plugin');

  static Future<String?> get platformVersion async {
    final version = await _channel.invokeMethod<String?>('getPlatformVersion');
    return version;
  }
}
