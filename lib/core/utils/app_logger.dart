import 'package:logger/logger.dart';

class AppLogger {
  // Private constructor to prevent instantiation
  AppLogger._();

  // Single static Logger instance with pretty formatting
  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 2, // Number of method calls shown in the log
      errorMethodCount: 5, // More lines for error stack trace
      lineLength: 80, // Max length of each line
      colors: true, // Colorful logs in console
      printEmojis: true, // Emojis for better log identification
      dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
    ),
  );

  // Info level log
  static void info(String message, [String? tag]) {
    _logger.i(_tagMessage(message, tag));
  }

  // Warning level log
  static void warn(String message, [String? tag]) {
    _logger.w(_tagMessage(message, tag));
  }

  // Error level log with optional error and stack trace
  static void error(
    String message, [
    dynamic error,
    StackTrace? stackTrace,
    String? tag,
  ]) {
    _logger.e(_tagMessage(message, tag), error: error, stackTrace: stackTrace);
  }

  // Debug level log
  static void debug(String message, [String? tag]) {
    _logger.t(_tagMessage(message, tag));
  }

  // Verbose log
  static void verbose(String message, [String? tag]) {
    _logger.t(_tagMessage(message, tag));
  }

  // Helper to prepend a tag if provided
  static String _tagMessage(String message, String? tag) {
    if (tag == null) {
      return message;
    } else {
      return "[$tag] $message";
    }
  }
}
