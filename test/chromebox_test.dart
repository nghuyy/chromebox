import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:chromebox/chromebox.dart';

void main() {
  const MethodChannel channel = MethodChannel('chromebox');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Chromebox.platformVersion, '42');
  });
}
