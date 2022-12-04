import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management3/app/modules/tasks/views/tasks_view.dart';
import 'package:task_management3/app/routes/app_pages.dart';

import '../controllers/add_tasks_controller.dart';

class AddTasksView extends GetView<AddTasksController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 30, top: 100),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return TasksView();
                          },
                        ));
                      },
                      child: Icon(
                        Ionicons.arrow_back_outline,
                        size: 40,
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [
                        Text(
                          'Add Tasks',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 50, top: 55, right: 50, bottom: 30),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Masukan Judul Tugas",
                          labelText: "Judul Tugas",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Masukan Deadline Tugas",
                          labelText: "Deadline Tugas",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Masukan Deskripsi Tugas",
                          labelText: "Deskripsi Tugas",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Masukan Metode Pengumpulan",
                          labelText: "Metode Pengumpulan",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      child: Column(
                        children: [
                          ElevatedButton(
                              onPressed: () => Get.toNamed(Routes.TASKS),
                              child: Text("Save")),
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
