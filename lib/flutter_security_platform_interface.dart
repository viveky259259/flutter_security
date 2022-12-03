import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_security_method_channel.dart';

abstract class FlutterSecurityPlatform extends PlatformInterface {
  /// Constructs a FlutterSecurityPlatform.
  FlutterSecurityPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterSecurityPlatform _instance = MethodChannelFlutterSecurity();

  /// The default instance of [FlutterSecurityPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterSecurity].
  static FlutterSecurityPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterSecurityPlatform] when
  /// they register themselves.
  static set instance(FlutterSecurityPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String> encrypt();

  Future<String> decrypt();
}
