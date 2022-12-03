#include "include/flutter_security/flutter_security_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_security_plugin.h"

void FlutterSecurityPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_security::FlutterSecurityPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
