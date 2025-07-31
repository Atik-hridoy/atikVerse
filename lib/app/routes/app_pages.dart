import 'package:get/get.dart';
import 'package:atik_verse/features/home/home_view.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.home, page: () => const HomeView()),
  ];
}
