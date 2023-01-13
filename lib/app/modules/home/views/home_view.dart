import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management3/app/modules/add_course/views/add_course_view.dart';
import 'package:task_management3/app/modules/intro/views/intro_view.dart';
import 'package:task_management3/app/modules/login/views/login_view.dart';
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
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 50, top: 20),
                    child: const Image(
                      image: AssetImage("assets/images/profil.jpg"),
                      width: 40,
                      height: 40,
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.only(top: 20, left: 70),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Center(
                                child: Text(
                                  "Hai Kyle!",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.defaultDialog(
                                    title: "Keluar",
                                    content:
                                        const Text("Apakah kamu ingin keluar?"),
                                    cancel: ElevatedButton(
                                      onPressed: () => Get.back(),
                                      child: const Text("Tidak"),
                                    ),
                                    confirm: ElevatedButton(
                                      onPressed: () =>
                                          Get.toNamed(Routes.LOGIN),
                                      child: const Text("Ya"),
                                    ),
                                  );
                                },
                                child: Row(
                                  children: const [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(Ionicons.log_out,
                                        color: Color.fromARGB(255, 8, 132, 235),
                                        size: 40),
                                  ],
                                ),
                              ),
                            ],
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
                      "Mata Kuliah",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const course(),
              const SizedBox(
                height: 30,
              ),
              FloatingActionButton.extended(
                onPressed: () => Get.toNamed(Routes.ADD_COURSE),
                label: const Text("Tambah Matkul"),
                icon: const Icon(
                  Ionicons.book,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const bottom_navi(),
            ],
          ),
        ),
      ),
    );
  }
}
