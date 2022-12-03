import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_security/flutter_security.dart';
import 'package:flutter_security/flutter_security_platform_interface.dart';
import 'package:flutter_security/flutter_security_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterSecurityPlatform
    with MockPlatformInterfaceMixin
    implements FlutterSecurityPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterSecurityPlatform initialPlatform = FlutterSecurityPlatform.instance;

  test('$MethodChannelFlutterSecurity is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterSecurity>());
  });

  test('getPlatformVersion', () async {
    FlutterSecurity flutterSecurityPlugin = FlutterSecurity();
    MockFlutterSecurityPlatform fakePlatform = MockFlutterSecurityPlatform();
    FlutterSecurityPlatform.instance = fakePlatform;

    expect(await flutterSecurityPlugin.getPlatformVersion(), '42');
  });
}
