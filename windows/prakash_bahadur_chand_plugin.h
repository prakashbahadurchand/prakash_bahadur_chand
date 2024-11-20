#ifndef FLUTTER_PLUGIN_PRAKASH_BAHADUR_CHAND_PLUGIN_H_
#define FLUTTER_PLUGIN_PRAKASH_BAHADUR_CHAND_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace prakash_bahadur_chand {

class PrakashBahadurChandPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  PrakashBahadurChandPlugin();

  virtual ~PrakashBahadurChandPlugin();

  // Disallow copy and assign.
  PrakashBahadurChandPlugin(const PrakashBahadurChandPlugin&) = delete;
  PrakashBahadurChandPlugin& operator=(const PrakashBahadurChandPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace prakash_bahadur_chand

#endif  // FLUTTER_PLUGIN_PRAKASH_BAHADUR_CHAND_PLUGIN_H_
