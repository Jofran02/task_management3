import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management3/app/modules/add_course/views/add_course_view.dart';
import 'package:task_management3/app/modules/intro/views/intro_view.dart';
import 'package:task_management3/app/routes/app_pages.dart';
import 'package:task_management3/app/utils/widget/bottom_navigation.dart';
import 'package:task_management3/app/utils/widget/course.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Center(
                    child: Container(
                      padding: const EdgeInsets.only(top: 20, left: 150),
                      child: Column(
                        children: [
                          Text(
                            "Hi Kyle!",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 120,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    const Text(""),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(25),
                child: Row(
                  children: [
                    const Text(
                      "Course",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const course(),
              SizedBox(
                height: 30,
              ),
              FloatingActionButton.extended(
                onPressed: () => Get.toNamed(Routes.ADD_COURSE),
                label: const Text("Add Course"),
                icon: const Icon(
                  Ionicons.book,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              bottom_navi(),
            ],
          ),
        ),
      ),
    );
  }
}
