import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:task_management3/app/data/controller/auth_controller.dart';
import 'package:task_management3/app/modules/description_tasks/controllers/description_tasks_controller.dart';
import 'package:task_management3/app/modules/edit_profil/controllers/edit_profil_controller.dart';
import 'package:task_management3/app/modules/tasks/controllers/tasks_controller.dart';
import 'package:task_management3/firebase_options.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Get.put(AuthController(), permanent: true);
  Get.put(EditProfilController(), permanent: true);
  Get.put(TasksController(), permanent: true);

  runApp(StreamBuilder(
    stream: FirebaseAuth.instance.authStateChanges(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const Center(child: CircularProgressIndicator());
      }
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Application",
        initialRoute: AppPages.iNITIAL,
        getPages: AppPages.routes,
      );
    },
  ));
}
