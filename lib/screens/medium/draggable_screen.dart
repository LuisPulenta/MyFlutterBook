import 'package:flutter/material.dart';

class DraggableScreen extends StatelessWidget {
  const DraggableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DraggableScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('DraggableScreen'),
      ),
    );
  }
}
