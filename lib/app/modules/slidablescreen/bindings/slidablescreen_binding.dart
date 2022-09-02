import 'package:get/get.dart';

import '../controllers/slidablescreen_controller.dart';

class SlidablescreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SlidablescreenController>(
      () => SlidablescreenController(),
    );
  }
}
