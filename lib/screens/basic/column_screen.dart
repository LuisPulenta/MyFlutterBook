import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ColumnScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('ColumnScreen'),
      ),
    );
  }
}
