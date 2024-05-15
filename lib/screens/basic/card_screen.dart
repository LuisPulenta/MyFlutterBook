import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CardScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('CardScreen'),
      ),
    );
  }
}
