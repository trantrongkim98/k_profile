import 'package:logger/logger.dart';

class LoggerApp {
  final dynamic message;
  final Logger _logger = Logger(
    printer: PrettyPrinter(),
  );
  LoggerApp(this.message);

  void get error {
    _logger.e(message);
  }

  void get verbose {
    _logger.v(message);
  }

  void get debug {
    _logger.d(message);
  }

  void get warring {
    _logger.w(message);
  }

  void get info {
    _logger.i(message);
  }

  void get wtf {
    _logger.wtf(message);
  }
}
