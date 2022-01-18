
import 'dart:async';

import 'package:flutter/services.dart';

class Chromebox {
  static const MethodChannel _channel = MethodChannel('chromebox');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
