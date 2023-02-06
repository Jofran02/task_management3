import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const AmbilGambar());
}

class AmbilGambar extends StatefulWidget {
  const AmbilGambar({super.key});

  @override
  State<AmbilGambar> createState() => _AmbilGambarState();
}

class _AmbilGambarState extends State<AmbilGambar> {
  File? image;

  Future getImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? imagePicked =
        await picker.pickImage(source: ImageSource.gallery);
    image = File(imagePicked!.path);
    setState(() {});
  }

  @override
  void InitState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          image != null
              ? SizedBox(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Image.file(
                    image!,
                    fit: BoxFit.cover,
                  ))
              : Container(),
          InkWell(
            onTap: () async {
              await getImage();
            },
          ),
        ],
      ),
    );
  }
}

class take_picture extends StatelessWidget {
  const take_picture({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        const AmbilGambar();
      },
    );
  }
}
