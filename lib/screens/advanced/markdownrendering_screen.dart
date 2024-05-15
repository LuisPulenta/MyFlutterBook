import 'package:flutter/material.dart';

class MarkdownrenderingScreen extends StatelessWidget {
  const MarkdownrenderingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MarkdownrenderingScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('MarkdownrenderingScreen'),
      ),
    );
  }
}
