// lib/app/routes/app_pages.dart
import 'package:get/get.dart';
import '../../features/intro/intro_view.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.home, page: () => const IntroView()),
  ];
}
