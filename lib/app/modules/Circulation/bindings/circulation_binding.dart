import 'package:get/get.dart';

import '../controllers/circulation_controller.dart';

class CirculationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CirculationController>(
      () => CirculationController(),
    );
  }
}
