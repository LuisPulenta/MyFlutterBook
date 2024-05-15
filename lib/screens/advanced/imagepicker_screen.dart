import 'package:flutter/material.dart';

class ImagepickerScreen extends StatelessWidget {
  const ImagepickerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ImagepickerScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('ImagepickerScreen'),
      ),
    );
  }
}
