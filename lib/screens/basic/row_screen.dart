import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  const RowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RowScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('RowScreen'),
      ),
    );
  }
}
