import 'package:flutter/material.dart';

class AnimatedlistScreen extends StatelessWidget {
  const AnimatedlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedlistScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('AnimatedlistScreen'),
      ),
    );
  }
}
