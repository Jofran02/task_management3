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
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 78),
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Text(
                        "TASK MANAGEMENT",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 10),
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
                      Container(
                        child: Column(
                          children: [
                            const Text(
                              "Selamat Datang di Task Management",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "Silahkan Masuk",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            left: 10, top: 55, right: 10, bottom: 30),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Masukan Email Anda",
                                  labelText: "Masukan Email",
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Masukan Password Anda",
                                  labelText: "Masukan Password",
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            left: 40, right: 40, top: 20, bottom: 20),
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                CoolAlert.show(
                                    context: context,
                                    type: CoolAlertType.success,
                                    title: "Berhasil Masuk",
                                    text:
                                        "Selamat anda telah masuk di Task Managament",
                                    onConfirmBtnTap: () => Navigator.pushNamed(
                                        context, Routes.HOME));
                              },
                              child: const Text("Masuk"),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            FloatingActionButton.extended(
                              onPressed: () => AuthC.signInWithGoogle(),
                              label: Text("Masuk dengan Google"),
                              icon: Icon(Ionicons.logo_google),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            left: 60, right: 60, top: 60, bottom: 10),
                        child: Column(
                          children: [
                            const Text(
                              "Belum Punya Akun?",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Silahkan ",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  child: Column(
                                    children: <Widget>[
                                      TextButton(
                                          onPressed: () =>
                                              Get.toNamed(Routes.REGISTER),
                                          child: const Text("Daftar")),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
