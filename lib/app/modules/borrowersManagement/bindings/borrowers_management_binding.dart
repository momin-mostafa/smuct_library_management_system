import 'package:get/get.dart';

import '../controllers/borrowers_management_controller.dart';

class BorrowersManagementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BorrowersManagementController>(
      () => BorrowersManagementController(),
    );
  }
}
