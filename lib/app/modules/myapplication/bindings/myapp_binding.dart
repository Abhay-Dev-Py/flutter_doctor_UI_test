import 'package:get/get.dart';

import '../controllers/myapp_controller.dart';

class MyAppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyAppController>(
      () => MyAppController(),
    );
  }
}
