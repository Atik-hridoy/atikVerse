import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';
import 'core/utils/app_logger.dart';

void main() {
  // Log app start
  AppLogger.info('AtikVerse app is starting...', 'Main');

  runApp(const AtikVerseApp());
}

class AtikVerseApp extends StatelessWidget {
  const AtikVerseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'AtikVerse Portfolio',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home,
      getPages: AppPages.pages,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'GoogleFonts.roboto', // Use Google Fonts if configured
        scaffoldBackgroundColor: Colors.white,
      ),
      // Log every navigation
      // navigatorObservers: [
      //   GetObserver(
      //     onNavigate: (route) {
      //       AppLogger.info('Navigated to ${route.settings.name}', 'Navigation');
      //     },
      //   ),
      // ],
    );
  }
}
