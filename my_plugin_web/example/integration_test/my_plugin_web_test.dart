import 'dart:html';

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:my_plugin_platform_interface/my_plugin_platform_interface.dart';
import 'package:my_plugin_web/my_plugin_web.dart';

class MockWindow extends Mock implements Window {}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('MyPluginWebPlatform', () {
    late Window window;

    setUp(() async {
      window = MockWindow();

      MyPluginPlatform.instance = MyPluginWebPlatform()..window = window;
    });

    testWidgets('MyPluginWebPlatform is the live instance', (tester) async {
      expect(MyPluginPlatform.instance, isA<MyPluginWebPlatform>());
    });
  });
}
