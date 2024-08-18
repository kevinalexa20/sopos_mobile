import 'package:flutter/foundation.dart';

// simple pesan logging error dan info
class AppLogger {
  static void log(String message, {String? tag}) {
    if (kDebugMode) {
      //kdebugmode hanya berjalan pada mode debug, di prod akan diabaikan
      print('${tag != null ? ' [$tag] ' : ''}$message');
    }
  }

  static void error(String meesage,
      {String? tag, Object? error, StackTrace? stackTrace}) {
    if (kDebugMode) {
      print('${tag != null ? '[tag]' : ''}ERROR: $meesage');
      if (error != null) {
        print('Error details: $error');
      }
      if (stackTrace != null) {
        print('Stack trace:\n$stackTrace');
        //stack trace ini akan menunjukkan dimana error terjadi
      }
    }
  }
}
