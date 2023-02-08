import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class EditProfilController extends GetxController {
  //TODO: Implement EditProfilController

  final count = 0.obs;
  String namafile = '';

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void pickUpImage() async {
    // var imageSource;
    final image = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        maxHeight: 512,
        maxWidth: 512,
        imageQuality: 75);

    Reference ref = FirebaseStorage.instance
        .ref()
        .child('FotoMinu/${namafile.toString()}_${DateTime.now()}.jpg');
    await ref.putFile(File(image!.path));
    ref.getDownloadURL().then((value) {
      namafile = value;
      update();
    });
  }
}
