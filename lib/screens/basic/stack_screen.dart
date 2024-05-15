import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StackScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('StackScreen'),
      ),
    );
  }
}