import 'dart:async';

import 'package:flutter/services.dart';

class PhysicalDiagonal {
  static const MethodChannel _channel =
      const MethodChannel('physical_diagonal');

  static Future<double> get platformVersion async {
    final double version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
