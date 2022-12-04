import 'package:get/get.dart';

import '../controllers/add_tasks_controller.dart';

class AddTasksBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddTasksController>(
      () => AddTasksController(),
    );
  }
}
