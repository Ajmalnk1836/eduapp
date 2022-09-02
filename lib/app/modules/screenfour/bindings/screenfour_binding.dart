import 'package:get/get.dart';

import '../controllers/screenfour_controller.dart';

class ScreenfourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScreenfourController>(
      () => ScreenfourController(),
    );
  }
}
