#include "include/prakash_bahadur_chand/prakash_bahadur_chand_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "prakash_bahadur_chand_plugin.h"

void PrakashBahadurChandPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  prakash_bahadur_chand::PrakashBahadurChandPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
