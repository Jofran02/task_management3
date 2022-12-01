import 'package:get/get.dart';

import '../modules/add_course/bindings/add_course_binding.dart';
import '../modules/add_course/views/add_course_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/intro/bindings/intro_binding.dart';
import '../modules/intro/views/intro_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/upload-foto/bindings/upload_foto_binding.dart';
import '../modules/upload-foto/views/upload_foto_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.INTRO;

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
      name: _Paths.UPLOAD_FOTO,
      page: () => UploadFotoView(),
      binding: UploadFotoBinding(),
    ),
    GetPage(
      name: _Paths.INTRO,
      page: () => intro(),
      binding: IntroBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
  ];
}
