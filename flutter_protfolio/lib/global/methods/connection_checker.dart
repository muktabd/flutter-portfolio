import 'dart:developer';
import 'dart:io';

class CheckConnectionFirst {
  static bool hasConnection = false;
  static Future<bool> hasNetwork() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        hasConnection = true;
        log('connected');
      }
    } on SocketException catch (_) {
      log('not connected');
      hasConnection = false;
    }
    return hasConnection;
  }
}
