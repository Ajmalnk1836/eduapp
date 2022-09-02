import 'package:get/get.dart';

import '../controllers/homescrren_controller.dart';

class HomescrrenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomescrrenController>(
      () => HomescrrenController(),
    );
  }
}
