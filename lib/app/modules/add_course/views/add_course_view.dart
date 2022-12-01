import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:task_management3/app/routes/app_pages.dart';

import '../controllers/add_course_controller.dart';

class AddCourseView extends GetView<AddCourseController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 30, top: 100),
              child: Text(
                'Add Course',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 50, top: 55, right: 50, bottom: 30),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Masukan Mata Kuliah",
                        labelText: "Mata Kuliah",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Masukan Nama Dosen",
                        labelText: "Nama Dosen",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  FloatingActionButton.extended(
                    onPressed: () => Get.toNamed(Routes.HOME),
                    label: Text("Save"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
