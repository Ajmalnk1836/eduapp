import 'package:get/get.dart';

import '../controllers/personaldetailsscreen_controller.dart';

class PersonaldetailsscreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PersonaldetailsscreenController>(
      () => PersonaldetailsscreenController(),
    );
  }
}
