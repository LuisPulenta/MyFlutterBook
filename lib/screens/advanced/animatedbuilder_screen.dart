import 'package:flutter/material.dart';

class AnimatedbuilderScreen extends StatelessWidget {
  const AnimatedbuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedbuilderScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('AnimatedbuilderScreen'),
      ),
    );
  }
}
