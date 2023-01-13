import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management3/app/routes/app_pages.dart';

import '../controllers/upload_foto_controller.dart';

class UploadFotoView extends GetView<UploadFotoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 40, top: 60),
        child: Column(
          children: [
            const Text(
              "Silahkan Upload Foto Profil",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Kamu",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 400,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(30)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Ionicons.add,
                    size: 60,
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(30),
            ),
            Column(
              children: [
                ElevatedButton(
                    onPressed: () => Get.toNamed(Routes.HOME),
                    child: const Text("Simpan")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
