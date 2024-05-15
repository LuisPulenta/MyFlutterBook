import 'package:flutter/material.dart';

class WebviewScreen extends StatelessWidget {
  const WebviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebviewScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('WebviewScreen'),
      ),
    );
  }
}
