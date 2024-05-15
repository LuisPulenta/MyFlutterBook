import 'package:flutter/material.dart';

class AnimatedcontainerScreen extends StatelessWidget {
  const AnimatedcontainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedcontainerScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('AnimatedcontainerScreen'),
      ),
    );
  }
}
