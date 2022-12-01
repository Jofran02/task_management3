import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management3/app/modules/home/views/home_view.dart';
import 'package:task_management3/app/modules/login/views/login_view.dart';

class intro extends StatefulWidget {
  _intro createState() => _intro();
}

class _intro extends State<intro> {
  void initState() {
    super.initState();
    introStart();
  }

  introStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginView(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Task Management",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
