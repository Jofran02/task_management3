import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management3/app/modules/tasks/views/tasks_view.dart';

import '../controllers/description_tasks_controller.dart';

class DescriptionTasksView extends GetView<DescriptionTasksController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          child: Row(
            children: [
              // (Get.arguments['nama_mk']),
            ],
          ),
          onTap: () {
            Get.to(TasksView(), arguments: {});
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
            rows: [
              DataRow(cells: [
                DataCell(Text(Get.arguments['tanggal'])),
                DataCell(Text(Get.arguments['deskripsi'])),
                DataCell(Text(Get.arguments['peng'])),
              ]),
            ],
          )),
    );
  }
}
