import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'prakash_bahadur_chand_platform_interface.dart';

/// An implementation of [PrakashBahadurChandPlatform] that uses method channels.
class MethodChannelPrakashBahadurChand extends PrakashBahadurChandPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('prakash_bahadur_chand');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
