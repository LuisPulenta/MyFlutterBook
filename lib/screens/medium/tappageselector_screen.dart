import 'package:flutter/material.dart';

class TappageselectorScreen extends StatelessWidget {
  const TappageselectorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TappageselectorScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('TappageselectorScreen'),
      ),
    );
  }
}
