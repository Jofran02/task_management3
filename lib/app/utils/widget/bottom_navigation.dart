import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management3/app/modules/add_course/views/add_course_view.dart';
import 'package:task_management3/app/modules/home/views/home_view.dart';
import 'package:task_management3/app/modules/profil/views/profil_view.dart';

@override
class bottom_navi extends StatelessWidget {
  const bottom_navi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 70,
      width: 350,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return HomeView();
                      },
                    ));
                  },
                  child: Icon(
                    Ionicons.home,
                    size: 30,
                    color: Colors.blue,
                  ),
                ),
                const Text(""),
                SizedBox(
                  width: 270,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ProfilView();
                      },
                    ));
                  },
                  child: Icon(
                    Ionicons.person,
                    size: 30,
                    color: Colors.blue,
                  ),
                ),
                const Text(""),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
