import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class TasksController extends GetxController {
  //TODO: Implement TasksController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  var isUbah = true.obs;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
  void ubah(data) {
    FirebaseFirestore.instance.collection('tugas').doc(data).update(
      {'ubah': true},
    ).then((value) {
      ubahUI();
    });
  }

  void ubahMinus(data) {
    FirebaseFirestore.instance.collection('tugas').doc(data).update(
      {'ubah': false},
    ).then((value) {
      ubahUI();
    });
  }

  void ubahUI() {
    isUbah = true.obs;
    update();
  }
}
