import 'package:flutter/material.dart';

class BuilderScreen extends StatelessWidget {
  const BuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BuilderScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('BuilderScreen'),
      ),
    );
  }
}
