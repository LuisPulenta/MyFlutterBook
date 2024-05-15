import 'package:flutter/material.dart';

class SilverlistScreen extends StatelessWidget {
  const SilverlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SilverlistScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('SilverlistScreen'),
      ),
    );
  }
}
