import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management3/app/modules/add_tasks/views/add_tasks_view.dart';
import 'package:task_management3/app/modules/description_tasks/views/description_tasks_view.dart';
import 'package:task_management3/app/modules/home/views/home_view.dart';

import '../controllers/tasks_controller.dart';

class TasksView extends GetView<TasksController> {
  final StreamController<bool> _checkBoxController = StreamController();
  Stream<bool> get _checkBoxStream => _checkBoxController.stream;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  margin: const EdgeInsets.all(10),
                  child: Row(
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
                      Column(
                        children: const [
                          Text(
                            "Pengembangan Aplikasi Mobile",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            "Reza Ilyasa M.Kom.",
                            style: TextStyle(
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
                      Container(
                        child: Column(
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
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return DescriptionTasksView();
                                    },
                                  ));
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  height: 50,
                                  width: 270,
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              StreamBuilder(
                                  stream: _checkBoxStream,
                                  initialData: false,
                                  builder: (BuildContext context,
                                      AsyncSnapshot<bool> snapshot) {
                                    return Checkbox(
                                      value: snapshot.data,
                                      onChanged: (changedValue) {
                                        _checkBoxController.sink
                                            .add(changedValue!);
                                      },
                                    );
                                  }),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return DescriptionTasksView();
                                    },
                                  ));
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  height: 50,
                                  width: 270,
                                  decoration: BoxDecoration(
                                    color: Colors.lightBlueAccent,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Checkbox(
                                value: isChecked,
                                onChanged: (bool? newValue) {
                                  isChecked = newValue!;
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return DescriptionTasksView();
                                    },
                                  ));
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  height: 50,
                                  width: 270,
                                  decoration: BoxDecoration(
                                    color: Colors.purpleAccent,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Checkbox(
                                value: isChecked,
                                onChanged: (bool? newValue) {
                                  isChecked = newValue!;
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return DescriptionTasksView();
                                    },
                                  ));
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  height: 50,
                                  width: 270,
                                  decoration: BoxDecoration(
                                    color: Colors.yellowAccent,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Checkbox(
                                value: isChecked,
                                onChanged: (bool? newValue) {
                                  isChecked = newValue!;
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return DescriptionTasksView();
                                    },
                                  ));
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  height: 50,
                                  width: 270,
                                  decoration: BoxDecoration(
                                    color: Colors.orangeAccent,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Checkbox(
                                value: isChecked,
                                onChanged: (bool? newValue) {
                                  isChecked = newValue!;
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
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
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return AddTasksView();
                                    },
                                  ));
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
      ),
    );
  }
}
