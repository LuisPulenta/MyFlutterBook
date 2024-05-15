import 'package:flutter/material.dart';

class RadiobuttonScreen extends StatelessWidget {
  const RadiobuttonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RadiobuttonScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('RadiobuttonScreen'),
      ),
    );
  }
}
