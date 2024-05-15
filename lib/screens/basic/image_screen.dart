import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ImageScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('ImageScreen'),
      ),
    );
  }
}
