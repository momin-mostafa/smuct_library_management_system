import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/student_pannel/bindings/student_pannel_binding.dart';
import '../modules/student_pannel/views/student_pannel_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.STUDENT_PANNEL,
      page: () => const StudentPannelView(),
      binding: StudentPannelBinding(),
    ),
  ];
}
