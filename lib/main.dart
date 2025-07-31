import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';
import 'core/utils/app_logger.dart';
import 'app/theme/app_theme.dart'; // Import your theme here

void main() {
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
      theme: AppTheme.lightTheme, // Use the full ThemeData here
    );
  }
}
