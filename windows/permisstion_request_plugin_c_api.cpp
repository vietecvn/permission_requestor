#include "include/permisstion_request_plugin/permisstion_request_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "permisstion_request_plugin.h"

void PermisstionRequestPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  permisstion_request_plugin::PermisstionRequestPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
