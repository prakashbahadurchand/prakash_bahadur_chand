
import 'prakash_bahadur_chand_platform_interface.dart';

class PrakashBahadurChand {
  Future<String?> getPlatformVersion() {
    return PrakashBahadurChandPlatform.instance.getPlatformVersion();
  }
}
