import 'package:get/get.dart';

import '../controllers/description_tasks_controller.dart';

class DescriptionTasksBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DescriptionTasksController>(
      () => DescriptionTasksController(),
    );
  }
}
