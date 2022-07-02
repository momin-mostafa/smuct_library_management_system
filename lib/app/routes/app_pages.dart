import 'package:get/get.dart';

import '../modules/Circulation/bindings/circulation_binding.dart';
import '../modules/Circulation/views/circulation_view.dart';
import '../modules/InventoryScreen/bindings/inventory_screen_binding.dart';
import '../modules/InventoryScreen/views/inventory_screen_view.dart';
import '../modules/borrowersManagement/bindings/borrowers_management_binding.dart';
import '../modules/borrowersManagement/views/borrowers_management_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/student_pannel/bindings/student_pannel_binding.dart';
import '../modules/student_pannel/views/student_pannel_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.HOME;

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
    GetPage(
      name: _Paths.INVENTORY_SCREEN,
      page: () => const InventoryScreenView(),
      binding: InventoryScreenBinding(),
    ),
    GetPage(
      name: _Paths.CIRCULATION,
      page: () => const CirculationView(),
      binding: CirculationBinding(),
    ),
    GetPage(
      name: _Paths.BORROWERS_MANAGEMENT,
      page: () => const BorrowersManagementView(),
      binding: BorrowersManagementBinding(),
    ),
  ];
}
