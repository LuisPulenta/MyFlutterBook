import 'package:flutter/material.dart';

class AbsortpointerScreen extends StatelessWidget {
  const AbsortpointerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AbsortpointerScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('AbsortpointerScreen'),
      ),
    );
  }
}
