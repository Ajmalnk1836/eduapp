import 'package:get/get.dart';

import '../controllers/signupscreen_controller.dart';

class SignupscreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupscreenController>(
      () => SignupscreenController(),
    );
  }
}
