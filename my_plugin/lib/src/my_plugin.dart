import 'package:my_plugin_platform_interface/my_plugin_platform_interface.dart';

class MyPlugin {
  MyPlugin({
    required MyPluginPlatform? myPluginPlatform,
  }) : _myPluginPlatform = myPluginPlatform ?? MyPluginPlatform.instance;

  final MyPluginPlatform _myPluginPlatform;
}

String get platformVersion {
  return 'Hey there';
}

Future<String> get other async {
  return MyPluginPlatform.instance.platformVersion;
}
