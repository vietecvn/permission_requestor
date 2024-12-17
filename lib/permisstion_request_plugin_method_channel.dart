import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'permisstion_request_plugin_platform_interface.dart';

/// An implementation of [PermisstionRequestPluginPlatform] that uses method channels.
class MethodChannelPermisstionRequestPlugin extends PermisstionRequestPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('permisstion_request_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
