import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:physical_diagonal/physical_diagonal.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _diagonalSize = 0.0;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    double diagonalSize;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      diagonalSize = await PhysicalDiagonal.platformVersion;
    } on PlatformException {
      diagonalSize = 0.0;
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _diagonalSize = diagonalSize;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Define screen diagonal'),
        ),
        body: Center(
          child: (_diagonalSize != 0.0)? Text('Screen diagonal in inches: $_diagonalSize') : Text('Screen size not defined'),
        ),
      ),
    );
  }
}
