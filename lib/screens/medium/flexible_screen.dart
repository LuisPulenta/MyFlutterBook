import 'package:flutter/material.dart';

class FlexibleScreen extends StatelessWidget {
  const FlexibleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlexibleScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('FlexibleScreen'),
      ),
    );
  }
}
