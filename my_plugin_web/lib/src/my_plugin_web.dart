import 'dart:async';
import 'dart:html' as html;

import 'package:flutter/foundation.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:my_plugin_platform_interface/my_plugin_platform_interface.dart';

/// The web implementation of [MyPluginPlatform].
///
/// This class implements the `package:my_plugin`
/// functionality for the web.
class MyPluginWebPlatform extends MyPluginPlatform {
  /// Registers this class as the default instance of [MyPluginPlatform].
  static void registerWith(Registrar registrar) {
    MyPluginPlatform.instance = MyPluginWebPlatform();
  }

  /// The current browser window.
  @visibleForTesting
  html.Window? window;

  html.Window get _window => window ?? html.window;

  /// Returns a [String] containing the version of the platform.
  Future<String> get getPlatformVersion {
    return Future.value(_window.navigator.userAgent);
  }
}
