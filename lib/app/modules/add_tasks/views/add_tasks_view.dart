import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management3/app/modules/tasks/views/tasks_view.dart';
import 'package:task_management3/app/routes/app_pages.dart';

import '../controllers/add_tasks_controller.dart';

class AddTasksView extends GetView<AddTasksController> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController judulcontroller = TextEditingController();
    final TextEditingController tglcontroller = TextEditingController();
    final TextEditingController deskripsicontroller = TextEditingController();
    final TextEditingController pengumpulancontroller = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 30, top: 100),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(() => TasksView(), arguments: {
                          "nama_mk": Get.arguments['nama_mk'].toString(),
                          "nama_dosen": Get.arguments['nama_dosen'],
                          "dosenid": Get.arguments['dosenid']
                        });
                      },
                      child: const Icon(
                        Ionicons.arrow_back_outline,
                        size: 40,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: const [
                        Text(
                          'Tambah Tugas',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        // Text(Get.arguments['nama_mk'])
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 50, top: 55, right: 50, bottom: 30),
                child: Column(
                  children: [
                    TextFormField(
                      controller: judulcontroller,
                      decoration: InputDecoration(
                          hintText: "Masukan Judul Tugas",
                          labelText: "Judul Tugas",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: tglcontroller,
                      decoration: InputDecoration(
                          hintText: "Masukan Deadline Tugas",
                          labelText: "Deadline Tugas",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: deskripsicontroller,
                      decoration: InputDecoration(
                          hintText: "Masukan Deskripsi Tugas",
                          labelText: "Deskripsi Tugas",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: pengumpulancontroller,
                      decoration: InputDecoration(
                          hintText: "Masukan Metode Pengumpulan",
                          labelText: "Metode Pengumpulan",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 40, right: 40, top: 20, bottom: 20),
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              var a = Get.arguments['nama_mk'].toString();
                              var b = Get.arguments['nama_dosen'];
                              var c = Get.arguments['dosenid'];
                              FirebaseFirestore.instance
                                  .collection('tugas')
                                  .add({
                                'judul': judulcontroller.text,
                                'tgl': tglcontroller.text,
                                'deskripsi': deskripsicontroller.text,
                                'pengumpulan': pengumpulancontroller.text,
                                'nama_dosen':
                                    Get.arguments['nama_dosen'].toString(),
                                'user': FirebaseAuth
                                    .instance.currentUser!.displayName
                                    .toString(),
                                'ubah': false,
                              });
                              CoolAlert.show(
                                  context: context,
                                  type: CoolAlertType.success,
                                  title: "Berhasil Menambahkan Tugas",
                                  text: "Tugas baru telah ditambahkan",
                                  onConfirmBtnTap: () => {
                                        Get.to(() => TasksView(), arguments: {
                                          "nama_mk": a,
                                          "nama_dosen": b,
                                          "dosenid": c
                                        })
                                      });
                            },
                            child: const Text("Simpan"),
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
