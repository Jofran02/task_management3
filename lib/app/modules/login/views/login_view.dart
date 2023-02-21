import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management3/app/data/controller/auth_controller.dart';
import 'package:task_management3/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final AuthC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 78),
                margin: const EdgeInsets.all(20),
                child: Column(
                  children: const [
                    Text(
                      "TASK MANAGEMENT",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 50, right: 50, top: 5, bottom: 80),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Column(
                      children: const [
                        Text(
                          "Selamat Datang di Task Management",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Silahkan Masuk",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Image(
                          image: NetworkImage(
                              'https://tse4.mm.bing.net/th?id=OIP.Vv8Lte9F8ATHhPhIDOmqOAHaHa&pid=Api&P=0'),
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 40, right: 40, top: 20, bottom: 20),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          FloatingActionButton.extended(
                            onPressed: () => AuthC.signInWithGoogle(),
                            label: const Text("Masuk dengan Google"),
                            icon: const Icon(Ionicons.logo_google),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
