import 'package:flutter/services.dart';

import 'package:my_plugin_platform_interface/my_plugin_platform_interface.dart';

const MethodChannel _channel = MethodChannel('my_plugin');

/// An implementation of [MyPluginPlatform]
/// that uses a `MethodChannel` to communicate with the native code.
///
/// The `my_plugin` plugin code
/// itself never talks to the native code directly.
/// It delegates all calls to an instance of a class
/// that extends the [MyPluginPlatform].
///
/// The architecture above allows for platforms that communicate differently
/// with the native side (like web) to have a common interface to extend.
///
/// This is the instance that runs when the native side talks
/// to your Flutter app through MethodChannels (Android and iOS platforms).
class MethodChannelMyPlugin extends MyPluginPlatform {
  @override
  Future<String> get platformVersion {
    return _channel
        .invokeMethod<String>(
          'getPlatformVersion',
        )
        .then((String? value) => value ?? '');
  }
}
