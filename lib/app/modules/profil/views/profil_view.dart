import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management3/app/modules/home/views/home_view.dart';

import '../controllers/profil_controller.dart';

class ProfilView extends GetView<ProfilController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
                          child: Icon(
                            Ionicons.arrow_back_outline,
                            size: 40,
                          ),
                        ),
                        SizedBox(
                          width: 110,
                        ),
                        Text(
                          'Profil',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: Image(
                        image: AssetImage("assets/images/profil.jpg"),
                        width: 150,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Kyle Washington',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Kyle123@gmail.com',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
