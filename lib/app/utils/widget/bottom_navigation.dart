import 'package:flutter/material.dart';
import 'package:task_management3/app/modules/add_course/views/add_course_view.dart';
import 'package:task_management3/app/modules/home/views/home_view.dart';

@override
Widget build(BuildContext context) {
  return MaterialApp(
    routes: {
      '/': (context) => HomeView(),
      '/add-course': (context) => AddCourseView(),
    },
  );
}
