import 'package:flutter/material.dart';

class FilterchipScreen extends StatelessWidget {
  const FilterchipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FilterchipScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('FilterchipScreen'),
      ),
    );
  }
}
