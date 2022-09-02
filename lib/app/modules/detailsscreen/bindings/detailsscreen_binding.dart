import 'package:get/get.dart';

import '../controllers/detailsscreen_controller.dart';

class DetailsscreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsscreenController>(
      () => DetailsscreenController(),
    );
  }
}
