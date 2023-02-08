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
            return Text("error");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }
          final data = snapshot.requireData;
          return GridView.builder(
            scrollDirection: Axis.vertical,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: data.size,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.lightBlueAccent,
                child: InkWell(
                  onTap: () {
                    print(data.docs[index]['nama_mk']);
                    Get.to(TasksView(), arguments: {
                      "nama_mk": data.docs[index]['nama_mk'],
                      "nama_dosen": data.docs[index]['nama_dosen']
                    });
                  },
                  child: Container(
                    // height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            height: 180,
                            alignment: Alignment.bottomCenter,
                            child: Center(
                              child: Text(data.docs[index]["nama_mk"]),
                            ),
                          )
                        ],
                      ),
                    ),

                    // height: 150,
                    // width: 150,
                  ),
                ),
              );
            },
          );
        });
  }
}
