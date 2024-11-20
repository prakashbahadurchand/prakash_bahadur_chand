import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'prakash_bahadur_chand_method_channel.dart';

abstract class PrakashBahadurChandPlatform extends PlatformInterface {
  /// Constructs a PrakashBahadurChandPlatform.
  PrakashBahadurChandPlatform() : super(token: _token);

  static final Object _token = Object();

  static PrakashBahadurChandPlatform _instance = MethodChannelPrakashBahadurChand();

  /// The default instance of [PrakashBahadurChandPlatform] to use.
  ///
  /// Defaults to [MethodChannelPrakashBahadurChand].
  static PrakashBahadurChandPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PrakashBahadurChandPlatform] when
  /// they register themselves.
  static set instance(PrakashBahadurChandPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
