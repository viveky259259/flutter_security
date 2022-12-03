import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_security_platform_interface.dart';

/// An implementation of [FlutterSecurityPlatform] that uses method channels.
class MethodChannelFlutterSecurity extends FlutterSecurityPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_security');

  @override
  Future<String> decrypt() async {
    final String? decryptedString =
        await methodChannel.invokeMethod<String>('decrypt');
    if (decryptedString != null) {
      return decryptedString;
    } else {
      throw Exception();
    }
  }

  @override
  Future<String> encrypt() async {
    final String? encryptedString =
        await methodChannel.invokeMethod<String>('encrypt');
    if (encryptedString != null) {
      return encryptedString;
    } else {
      throw Exception();
    }
  }
}
