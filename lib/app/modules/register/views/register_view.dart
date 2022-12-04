import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:task_management3/app/routes/app_pages.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
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
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 78),
                  margin: EdgeInsets.all(20),
                  child: Column(
                    children: [
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
                  padding:
                      EdgeInsets.only(left: 50, right: 50, top: 5, bottom: 100),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "Selamat Datang di Task Management",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Silahkan Login",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 10, top: 55, right: 10, bottom: 30),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Masukan Nama Anda",
                                  labelText: "Masukan Nama",
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Masukan Email Anda",
                                  labelText: "Masukan Email",
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Masukan Password Anda",
                                  labelText: "Masukan Password",
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                            ),
                            SizedBox(height: 50),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 40, right: 40, top: 20, bottom: 20),
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () => Get.toNamed(Routes.LOGIN),
                              child: Text("Register"),
                            ),
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
      ),
    );
  }
}
