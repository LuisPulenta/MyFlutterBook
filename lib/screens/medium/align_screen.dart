import 'package:flutter/material.dart';

class AlignScreen extends StatelessWidget {
  const AlignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlignScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('AlignScreen'),
      ),
    );
  }
}
