import 'package:flutter/material.dart';

class CliprectScreen extends StatelessWidget {
  const CliprectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CliprectScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('CliprectScreen'),
      ),
    );
  }
}
