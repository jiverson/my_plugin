import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:my_plugin/my_plugin.dart';

class MockMyPluginPlatform extends Mock implements MyPluginPlatform {}

void main() {
  group('MyPlugin', () {
    test('can be instantiated', () {
      expect(
        MyPlugin(myPluginPlatform: MockMyPluginPlatform()),
        isNotNull,
      );
    });
  });
}
