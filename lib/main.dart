import 'dart:async';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:atik_verse/features/home/home_view.dart';

// Global logger instance
final logger = Logger(
  printer: PrettyPrinter(
    methodCount: 1, // Number of method calls to be shown
    errorMethodCount: 5, // Number of method calls if stacktrace is provided
    lineLength: 50, // Width of the output
    colors: true, // Colorful log messages
    printEmojis: true, // Print an emoji for each log message
    dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart, // Include timestamp
  ),
);

void main() {
  // Initialize logger
  logger.i('🚀 Starting AtikVerse App');

  // Error handling
  FlutterError.onError = (details) {
    logger.e(
      '🚨 Flutter Error',
      error: details.exception,
      stackTrace: details.stack,
    );
  };

  // Run the app with error handling
  runZonedGuarded(
    () => runApp(const AtikVerseApp()),
    (error, stackTrace) =>
        logger.e('🔥 Uncaught error', error: error, stackTrace: stackTrace),
  );
}

class AtikVerseApp extends StatelessWidget {
  const AtikVerseApp({super.key});

  @override
  Widget build(BuildContext context) {
    logger.d('Building AtikVerseApp');
    return MaterialApp(
      title: 'AtikVerse Portfolio',
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
      builder: (context, child) {
        // Log route changes
        if (child != null) {
          final route = ModalRoute.of(context);
          if (route != null) {
            logger.i('🌐 Route changed to: ${route.settings.name ?? 'Home'}');
          }
        }
        return child ?? const SizedBox.shrink();
      },
    );
  }
}
