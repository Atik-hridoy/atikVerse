import 'package:get/get.dart';

// Import views and bindings
import '../../features/home/home_view.dart';
import '../../features/home/home_binding.dart';

import '../../features/intro/intro_view.dart';
import '../../features/intro/intro_binding.dart';

import '../../features/projects/projects_view.dart';
import '../../features/projects/projects_binding.dart';

import '../../features/experience/experience_view.dart';
import '../../features/experience/experience_binding.dart';

import '../../features/skills/skills_view.dart';
import '../../features/skills/skills_binding.dart';

import '../../features/education/education_view.dart';
import '../../features/education/education_binding.dart';

import '../../features/contact/contact_view.dart';
import '../../features/contact/contact_binding.dart';

import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    // GetPage(
    //   name: AppRoutes.intro,
    //   page: () => IntroView(),
    //   binding: IntroBinding(),
    // ),
    // GetPage(
    //   name: AppRoutes.projects,
    //   page: () => ProjectsView(),
    //   binding: ProjectsBinding(),
    // ),
    // GetPage(
    //   name: AppRoutes.experience,
    //   page: () => ExperienceView(),
    //   binding: ExperienceBinding(),
    // ),
    // GetPage(
    //   name: AppRoutes.skills,
    //   page: () => SkillsView(),
    //   binding: SkillsBinding(),
    // ),
    // GetPage(
    //   name: AppRoutes.education,
    //   page: () => EducationView(),
    //   binding: EducationBinding(),
    // ),
    // GetPage(
    //   name: AppRoutes.contact,
    //   page: () => ContactView(),
    //   binding: ContactBinding(),
    // ),
  ];
}
