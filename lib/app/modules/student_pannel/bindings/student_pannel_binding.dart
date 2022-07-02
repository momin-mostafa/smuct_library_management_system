import 'package:get/get.dart';

import '../controllers/student_pannel_controller.dart';

class StudentPannelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StudentPannelController>(
      () => StudentPannelController(),
    );
  }
}
