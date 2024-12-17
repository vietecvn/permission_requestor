import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'permisstion_request_plugin_method_channel.dart';

abstract class PermisstionRequestPluginPlatform extends PlatformInterface {
  /// Constructs a PermisstionRequestPluginPlatform.
  PermisstionRequestPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static PermisstionRequestPluginPlatform _instance = MethodChannelPermisstionRequestPlugin();

  /// The default instance of [PermisstionRequestPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelPermisstionRequestPlugin].
  static PermisstionRequestPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PermisstionRequestPluginPlatform] when
  /// they register themselves.
  static set instance(PermisstionRequestPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
