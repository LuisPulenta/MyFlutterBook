import 'package:flutter/material.dart';

class RotatedboxScreen extends StatelessWidget {
  const RotatedboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RotatedboxScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('RotatedboxScreen'),
      ),
    );
  }
}
