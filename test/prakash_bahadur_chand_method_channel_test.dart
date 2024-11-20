import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:prakash_bahadur_chand/prakash_bahadur_chand_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelPrakashBahadurChand platform = MethodChannelPrakashBahadurChand();
  const MethodChannel channel = MethodChannel('prakash_bahadur_chand');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
