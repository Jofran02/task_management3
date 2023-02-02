import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management3/app/data/controller/auth_controller.dart';
import 'package:task_management3/app/modules/home/views/home_view.dart';

import '../../../routes/app_pages.dart';
import '../controllers/profil_controller.dart';

class ProfilView extends GetView<ProfilController> {
  final AuthC = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 30, left: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return HomeView();
                            },
                          ));
                        },
                        child: const Icon(
                          Ionicons.arrow_back_outline,
                          size: 40,
                        ),
                      ),
                      const SizedBox(
                        width: 110,
                      ),
                      const Text(
                        'Profil',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.defaultDialog(
                            title: "Keluar",
                            content: const Text("Apakah kamu ingin keluar?"),
                            cancel: ElevatedButton(
                              onPressed: () => Get.back(),
                              child: const Text("Tidak"),
                            ),
                            confirm: ElevatedButton(
                              onPressed: () => AuthC.logout(),
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
                  const SizedBox(
                    height: 40,
                  ),
                  const Center(
                    child: Image(
                      image: AssetImage("assets/images/profil.jpg"),
                      width: 150,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Kyle Washington',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Kyle123@gmail.com',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            FloatingActionButton.extended(
              onPressed: () => Get.toNamed(Routes.EDIT_PROFIL),
              label: const Text("Edit Profil"),
              icon: const Icon(
                Ionicons.people,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
