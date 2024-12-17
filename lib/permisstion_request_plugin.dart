
import 'permisstion_request_plugin_platform_interface.dart';

class PermisstionRequestPlugin {
  Future<String?> getPlatformVersion() {
    return PermisstionRequestPluginPlatform.instance.getPlatformVersion();
  }
}
