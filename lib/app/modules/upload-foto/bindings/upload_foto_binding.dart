import 'package:get/get.dart';

import '../controllers/upload_foto_controller.dart';

class UploadFotoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UploadFotoController>(
      () => UploadFotoController(),
    );
  }
}
