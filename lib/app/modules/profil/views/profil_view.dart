import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management3/app/data/controller/auth_controller.dart';
import 'package:task_management3/app/modules/home/views/home_view.dart';

import '../../../routes/app_pages.dart';
import '../controllers/profil_controller.dart';

class ProfilView extends GetView<ProfilController> {
  final authC = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://tse1.mm.bing.net/th?id=OIP.mVYA0L7EzQoizdljHJzT4gHaK3&pid=Api&P=0'),
          ),
        ),
        child: SafeArea(
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
                    const SizedBox(
                      height: 40,
                    ),
                    ClipRRect(
                      child: Image.network(
                        authC.auth.currentUser!.photoURL!,
                        height: 100,
                        width: 100,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      authC.auth.currentUser!.displayName!,
                      style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      authC.auth.currentUser!.email!,
                      style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
