import 'package:flutter/material.dart';

class SizedboxScreen extends StatelessWidget {
  const SizedboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SizedboxScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('SizedboxScreen'),
      ),
    );
  }
}
