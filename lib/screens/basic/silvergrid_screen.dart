import 'package:flutter/material.dart';

class SilvergridScreen extends StatelessWidget {
  const SilvergridScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SilvergridScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('SilvergridScreen'),
      ),
    );
  }
}
