import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management3/app/modules/add_course/views/add_course_view.dart';
import 'package:task_management3/app/modules/tasks/views/tasks_view.dart';

class course extends StatelessWidget {
  const course({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance.collection('matakuliah').snapshots(),
        builder:
            (__, AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.hasError) {
            return const Text("error");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("Loading");
          }
          final data = snapshot.requireData;
          return GridView.builder(
            scrollDirection: Axis.vertical,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemCount: data.size,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Card(
                  color: Colors.lightBlueAccent,
                  child: InkWell(
                    onLongPress: () {
                      {
                        Get.defaultDialog(
                          title: "Hapus Tugas",
                          content: const Text(
                              "Apakah kamu ingin menghapus tugas ini?"),
                          cancel: ElevatedButton(
                            onPressed: () => Get.back(),
                            child: const Text("Tidak"),
                          ),
                          confirm: ElevatedButton(
                            onPressed: () => FirebaseFirestore.instance
                                .collection('matakuliah')
                                .doc(data.docs[index].id)
                                .delete()
                                .whenComplete(
                                  () => Get.back(),
                                ),
                            child: const Text("Ya"),
                          ),
                        );
                      }
                    },
                    onTap: () {
                      print(data.docs[index]['nama_mk']);
                      Get.to(() => TasksView(), arguments: {
                        "nama_mk": data.docs[index]['nama_mk'].toString(),
                        "nama_dosen": data.docs[index]['nama_dosen'],
                        "dosenid": data.docs[index].id
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 180,
                          alignment: Alignment.center,
                          child: Center(
                            child: Text(data.docs[index]["nama_mk"]),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        });
  }
}
