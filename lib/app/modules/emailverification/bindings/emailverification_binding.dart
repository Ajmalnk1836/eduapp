import 'package:get/get.dart';

import '../controllers/emailverification_controller.dart';

class EmailverificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmailverificationController>(
      () => EmailverificationController(),
    );
  }
}
