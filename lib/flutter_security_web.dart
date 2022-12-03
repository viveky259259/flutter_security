// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'flutter_security_platform_interface.dart';

/// A web implementation of the FlutterSecurityPlatform of the FlutterSecurity plugin.
class FlutterSecurityWeb extends FlutterSecurityPlatform {
  /// Constructs a FlutterSecurityWeb
  FlutterSecurityWeb();

  static void registerWith(Registrar registrar) {
    FlutterSecurityPlatform.instance = FlutterSecurityWeb();
  }

  @override
  Future<String> decrypt() {
    // TODO: implement decrypt
    throw UnimplementedError();
  }

  @override
  Future<String> encrypt() {
    // TODO: implement encrypt
    throw UnimplementedError();
  }
}
