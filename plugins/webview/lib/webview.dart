
import 'dart:async';

import 'package:flutter/services.dart';

class Webview {
  static const MethodChannel _channel = MethodChannel('webview');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
