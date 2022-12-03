import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_security/flutter_security.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _flutterSecurityPlugin = FlutterSecurity();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  _flutterSecurityPlugin.encrypt();
                },
                child: Text(
                  'Encrypt',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )),
            ElevatedButton(
                onPressed: () {
                  _flutterSecurityPlugin.decrypt();
                },
                child: Text(
                  'Decrypt',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}
