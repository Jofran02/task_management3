import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management3/app/modules/tasks/views/tasks_view.dart';

import '../controllers/description_tasks_controller.dart';

class DescriptionTasksView extends GetView<DescriptionTasksController> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Belajar Data Table',
      home: ShowDataTable(),
    );
  }
}

class ShowDataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          child: Row(
            children: [
              Icon(
                Ionicons.arrow_back_outline,
                size: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 10,
              ),
              Text(Get.arguments['nama_mk']),
            ],
          ),
          onTap: () {
            Get.to(TasksView(), arguments: {
              "nama_mk": Get.arguments['nama_mk'],
              "nama_dosen": Get.arguments['nama_dosen'],
            });
          },
        ),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: DataTable(
            columns: const [
              DataColumn(label: Text("Dedline")),
              DataColumn(label: Text("Deskripsi")),
              DataColumn(label: Text("Pengumpulan")),
            ],
            rows: const [
              DataRow(cells: [
                DataCell(Text('22-01-2023')),
                DataCell(Text(
                    'Membuat Ringkasan Materi mengenai Teknologi Informasi yang ada di kehidupan sehari-hari')),
                DataCell(Text('Email')),
              ]),
            ],
          )),
    );
  }
}
