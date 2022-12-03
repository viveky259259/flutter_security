import 'flutter_security_platform_interface.dart';

class FlutterSecurity {
  Future<String> encrypt() async {
    return FlutterSecurityPlatform.instance.encrypt();
  }

  Future<String> decrypt() async {
    return FlutterSecurityPlatform.instance.decrypt();
  }
}
