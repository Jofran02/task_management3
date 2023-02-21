import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management3/app/modules/add_tasks/views/add_tasks_view.dart';
import 'package:task_management3/app/modules/description_tasks/views/description_tasks_view.dart';
import 'package:task_management3/app/modules/home/views/home_view.dart';
import 'package:task_management3/app/routes/app_pages.dart';

import '../../description_tasks/controllers/description_tasks_controller.dart';
import '../controllers/tasks_controller.dart';

class TasksView extends StatelessWidget {
  late final String nama_mk;
  late final String nama_dosen;
  final StreamController<bool> _checkBoxController = StreamController();
  Stream<bool> get _checkBoxStream => _checkBoxController.stream;
  bool isChecked = false;
  final controller = Get.find<TasksController>();
  @override
  Widget build(BuildContext context) {
    Get.put(DescriptionTasksController(), permanent: true);

    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                margin: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(() => HomeView(), arguments: {
                          "nama_mk": Get.arguments['nama_mk'].toString(),
                          "nama_dosen": Get.arguments['nama_dosen'],
                          "dosenid": Get.arguments['dosenid']
                        });
                      },
                      child: const Icon(
                        Ionicons.arrow_back_outline,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Get.arguments['nama_mk'],
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          Get.arguments['nama_dosen'],
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 5, bottom: 100),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: const [
                            Text(
                              "Tugas",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 300,
                      child: StreamBuilder(
                          stream: FirebaseFirestore.instance
                              .collection('tugas')
                              .where('nama_dosen',
                                  isEqualTo: Get.arguments['nama_dosen'])
                              .where('user',
                                  isEqualTo: FirebaseAuth
                                      .instance.currentUser!.displayName)
                              .snapshots(),
                          builder: (__,
                              AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                                  snapshot) {
                            if (snapshot.hasError) {
                              return const Text(
                                "Error",
                                style: TextStyle(
                                    fontSize: 100,
                                    color: Color.fromARGB(255, 226, 7, 7)),
                              );
                            }
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const Text(
                                "Loading",
                                style: TextStyle(color: Colors.white),
                              );
                            }
                            final dataTugas = snapshot.requireData;
                            return ListView.builder(
                              // itemCount: 4,
                              itemCount: dataTugas.size,
                              scrollDirection: Axis.vertical,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return ListTile(
                                    leading: const Icon(Icons.list),
                                    trailing: InkWell(
                                      onTap: () {
                                        print(dataTugas.docs[index].id);
                                        var data = dataTugas.docs[index].id;
                                        dataTugas.docs[index]['ubah'] == false
                                            ? controller.ubah(data)
                                            : controller.ubahMinus(data);
                                      },
                                      child: Text(
                                        dataTugas.docs[index]['ubah'] == true
                                            ? "Sudah"
                                            : "belum",
                                        style: const TextStyle(
                                            color:
                                                Color.fromARGB(255, 231, 4, 4),
                                            fontSize: 15),
                                      ),
                                    ),
                                    title: InkWell(
                                        onTap: () {
                                          print("object");
                                          print(dataTugas.docs[index]['tgl']);
                                          Get.to(() => DescriptionTasksView(),
                                              arguments: {
                                                "tanggal": dataTugas.docs[index]
                                                    ['tgl'],
                                                "deskripsi": dataTugas
                                                    .docs[index]['deskripsi'],
                                                "peng": dataTugas.docs[index]
                                                    ['pengumpulan']
                                              });
                                        },
                                        child: Text(
                                            dataTugas.docs[index]['judul'])));
                              },
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 55),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 50),
                            padding: const EdgeInsets.all(10),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)),
                            child: InkWell(
                              onTap: () {
                                Get.to(() => AddTasksView(), arguments: {
                                  "nama_mk": Get.arguments['nama_mk'],
                                  "nama_dosen": Get.arguments['nama_dosen'],
                                  "dosenid": Get.arguments['dosenid']
                                });
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Ionicons.add,
                                    size: 60,
                                  ),
                                  Text(""),
                                ],
                              ),
                            ),
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
    );
  }
}
