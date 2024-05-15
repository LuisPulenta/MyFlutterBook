import 'package:flutter/material.dart';

class BottomnavigationbarScreen extends StatelessWidget {
  const BottomnavigationbarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomnavigationbarScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('BottomnavigationbarScreen'),
      ),
    );
  }
}
