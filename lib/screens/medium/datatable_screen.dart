import 'package:flutter/material.dart';

class DatatableScreen extends StatelessWidget {
  const DatatableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DatatableScreen '),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('DatatableScreen '),
      ),
    );
  }
}
