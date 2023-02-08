import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management3/app/modules/home/views/home_view.dart';
import 'package:task_management3/app/routes/app_pages.dart';
import 'package:task_management3/app/utils/widget/bottom_navigation.dart';

import '../controllers/add_course_controller.dart';

class AddCourseView extends GetView<AddCourseController> {
  TextEditingController controller_mk = TextEditingController();
  TextEditingController controller_namadosen = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 30, top: 100),
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
                          width: 10,
                        ),
                        const Text(
                          'Tambah Mata Kuliah',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 50, top: 55, right: 50, bottom: 30),
                child: Column(
                  children: [
                    TextFormField(
                      controller: controller_mk,
                      decoration: InputDecoration(
                          hintText: "Masukan Mata Kuliah",
                          labelText: "Mata Kuliah",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: controller_namadosen,
                      decoration: InputDecoration(
                          hintText: "Masukan Nama Dosen",
                          labelText: "Nama Dosen",
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
                              FirebaseFirestore.instance
                                  .collection('matakuliah')
                                  .add({
                                'nama_dosen': controller_namadosen.text,
                                'nama_mk': controller_mk.text
                              });
                              CoolAlert.show(
                                  context: context,
                                  type: CoolAlertType.success,
                                  title: "Berhasil Menambahkan Matkul",
                                  text: "Mata Kuliah telah berhasil ditambah",
                                  onConfirmBtnTap: () => Navigator.pushNamed(
                                      context, Routes.HOME));
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
