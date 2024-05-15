import 'package:flutter/material.dart';

class LottieScreen extends StatelessWidget {
  const LottieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LottieScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('LottieScreen'),
      ),
    );
  }
}
