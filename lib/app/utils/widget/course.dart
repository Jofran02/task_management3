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
    return Row(children: [
      Column(children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return TasksView();
                      },
                    ));
                  },
                  child: Column(
                    children: const [
                      Text(
                        "Pemrograman Aplikasi Mobile",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return TasksView();
                    },
                  ));
                },
                child: Column(
                  children: const [
                    Text("Metode Numerik",
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return TasksView();
                      },
                    ));
                  },
                  child: Column(
                    children: const [
                      Text("UI & UX Design",
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return TasksView();
                            },
                          ));
                        },
                        child: Column(
                          children: const [
                            Text("Video Editing",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    ]);
  }
}
