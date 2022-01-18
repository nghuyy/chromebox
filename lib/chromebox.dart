
import 'dart:async';
import 'package:osplatform/OSPlatform.dart';
import 'package:flutter/services.dart';

class Chromebox {
  static const MethodChannel _channel = MethodChannel('chromebox');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<void> startTab(String url) async {
    if(AndroidOS) {
      await _channel.invokeMethod('startTab', <String, String>{"url": url});
    }else{
      print("Only support startTab on AndroidOS");
    }
  }
}
