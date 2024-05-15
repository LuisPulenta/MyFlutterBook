import 'package:flutter/material.dart';

class ActionchipScreen extends StatelessWidget {
  const ActionchipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ActionchipScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('ActionchipScreen'),
      ),
    );
  }
}
