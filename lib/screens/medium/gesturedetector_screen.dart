import 'package:flutter/material.dart';

class GesturedetectorScreen extends StatelessWidget {
  const GesturedetectorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GesturedetectorScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('GesturedetectorScreen'),
      ),
    );
  }
}
