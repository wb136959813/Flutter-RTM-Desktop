import 'package:flutter/services.dart';

mixin AgoraRtmPlugin {
  static const MethodChannel _methodChannel =
      const MethodChannel("io.agora.rtm");

  static Future<dynamic> _sendMethodMessage(
      String call, String method, Map arguments) {
    return _methodChannel
        .invokeMethod(method, {"call": call, "params": arguments});
  }

  static Future<dynamic> callMethodForStatic(String name, Map arguments) {
    return _sendMethodMessage("static", name, arguments);
  }
}