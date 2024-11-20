import 'package:flutter_test/flutter_test.dart';
import 'package:prakash_bahadur_chand/prakash_bahadur_chand.dart';
import 'package:prakash_bahadur_chand/prakash_bahadur_chand_platform_interface.dart';
import 'package:prakash_bahadur_chand/prakash_bahadur_chand_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPrakashBahadurChandPlatform
    with MockPlatformInterfaceMixin
    implements PrakashBahadurChandPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PrakashBahadurChandPlatform initialPlatform = PrakashBahadurChandPlatform.instance;

  test('$MethodChannelPrakashBahadurChand is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPrakashBahadurChand>());
  });

  test('getPlatformVersion', () async {
    PrakashBahadurChand prakashBahadurChandPlugin = PrakashBahadurChand();
    MockPrakashBahadurChandPlatform fakePlatform = MockPrakashBahadurChandPlatform();
    PrakashBahadurChandPlatform.instance = fakePlatform;

    expect(await prakashBahadurChandPlugin.getPlatformVersion(), '42');
  });
}
