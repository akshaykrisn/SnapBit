import 'dart:io';

import 'package:camera_camera/camera_camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
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

  Widget build(BuildContext context) {
    return Scaffold(
      body:
          CameraCamera(onFile: (file) => {print(file), Navigator.pop(context)}),
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
