import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management3/app/data/controller/auth_controller.dart';
import 'package:task_management3/app/routes/app_pages.dart';
import 'package:task_management3/app/utils/widget/bottom_navigation.dart';
import 'package:task_management3/app/utils/widget/course.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 50, top: 20),
                    child: Image.network(
                      authC.auth.currentUser!.photoURL!,
                      height: 40,
                      width: 40,
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.only(top: 20, left: 70),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Center(
                                child: Text(
                                  authC.auth.currentUser!.displayName!,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                width: 40,
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
                                      onPressed: () => authC.logout(),
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
                  children: const [
                    Text(
                      "Task Management",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Quotes: Ayo Semangat ngerjain Tugas nya!",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
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
              Container(
                child: const course(),
                height: 330,
              ),
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
