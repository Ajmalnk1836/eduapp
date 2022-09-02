import 'package:get/get.dart';

import '../controllers/screenfive_controller.dart';

class ScreenfiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScreenfiveController>(
      () => ScreenfiveController(),
    );
  }
}
