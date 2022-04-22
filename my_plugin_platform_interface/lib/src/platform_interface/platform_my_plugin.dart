import 'package:my_plugin_platform_interface/my_plugin_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class MyPluginPlatform extends PlatformInterface {
  /// Constructs a [MyPluginPlatform].
  MyPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static MyPluginPlatform _instance = MethodChannelMyPlugin();

  /// The default instance of [MyPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelMyPlugin].
  static MyPluginPlatform get instance => _instance;

  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [MyPluginPlatform] when they register themselves.
  static set instance(MyPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  /// Returns the platform version.
  Future<String> get platformVersion {
    throw UnimplementedError('platformVersion has not been implemented.');
  }
}
