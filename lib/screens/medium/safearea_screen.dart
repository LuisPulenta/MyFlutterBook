import 'package:flutter/material.dart';

class SafeareaScreen extends StatelessWidget {
  const SafeareaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SafeareaScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('SafeareaScreen'),
      ),
    );
  }
}
