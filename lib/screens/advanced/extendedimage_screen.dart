import 'package:flutter/material.dart';

class ExtendedimageScreen extends StatelessWidget {
  const ExtendedimageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExtendedimageScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('ExtendedimageScreen'),
      ),
    );
  }
}
