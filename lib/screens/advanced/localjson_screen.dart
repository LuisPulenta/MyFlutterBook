import 'package:flutter/material.dart';

class LocaljsonScreen extends StatelessWidget {
  const LocaljsonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LocaljsonScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('LocaljsonScreen'),
      ),
    );
  }
}
