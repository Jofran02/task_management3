import 'package:get/get.dart';

import '../modules/add_course/bindings/add_course_binding.dart';
import '../modules/add_course/views/add_course_view.dart';
import '../modules/add_tasks/bindings/add_tasks_binding.dart';
import '../modules/add_tasks/views/add_tasks_view.dart';
import '../modules/description_tasks/bindings/description_tasks_binding.dart';
import '../modules/description_tasks/views/description_tasks_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/intro/bindings/intro_binding.dart';
import '../modules/intro/views/intro_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/profil/bindings/profil_binding.dart';
import '../modules/profil/views/profil_view.dart';
import '../modules/tasks/bindings/tasks_binding.dart';
import '../modules/tasks/views/tasks_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const iNITIAL = Routes.INTRO;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ADD_COURSE,
      page: () => AddCourseView(),
      binding: AddCourseBinding(),
    ),
    GetPage(
      name: _Paths.INTRO,
      page: () => const Intro(),
      binding: IntroBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.TASKS,
      page: () => TasksView(),
      binding: TasksBinding(),
    ),
    GetPage(
      name: _Paths.ADD_TASKS,
      page: () => AddTasksView(),
      binding: AddTasksBinding(),
    ),
    GetPage(
      name: _Paths.PROFIL,
      page: () => ProfilView(),
      binding: ProfilBinding(),
    ),
    GetPage(
      name: _Paths.DESCRIPTION_TASKS,
      page: () => DescriptionTasksView(),
      binding: DescriptionTasksBinding(),
    ),
  ];
}
