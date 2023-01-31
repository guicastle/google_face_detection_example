import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_face_detection_example/pages/face_detector_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          child: Center(
            child: ElevatedButton(
              child: const Text("Open Camera"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FaceDetectorPage(),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
