import 'dart:io';

import 'package:camera_camera/camera_camera.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  final storage = FirebaseStorage.instance;
  final storageRef = FirebaseStorage.instance.ref();
  late final imagesRef;
  @override
  void initState() {
    // TODO: implement initState
    imagesRef = storageRef.child("images");
    super.initState();
  }

  final photos = <File>[];
  void openCamera() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => CameraCamera(
                  onFile: (file) {
                    photos.add(file);
                    Navigator.pop(context);
                    setState(() {});
                  },
                )));
  }

  Future<void> uploadFile(File filesd) async {
    String filePath = filesd.toString();
    File file = File(filePath);

    try {
      await imagesRef.putFile(file);
    } catch (e) {
      // ...
      print(e);
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: CameraCamera(onFile: (file) {
        print(file);
        uploadFile(file);
        Navigator.pop(context);
      }),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //             builder: (_) => CameraCamera(
      //                   onFile: (file) {
      //                     photos.add(file);
      //                     //When take foto you should close camera
      //                     Navigator.pop(context);
      //                     setState(() {});
      //                   },
      //                 )));
      //   },
      //   child: Icon(Icons.camera_alt),
      // ),
    );
  }
}
