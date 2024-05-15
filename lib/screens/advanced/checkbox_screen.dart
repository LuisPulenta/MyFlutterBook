import 'package:flutter/material.dart';

class CheckboxScreen extends StatelessWidget {
  const CheckboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckboxScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('CheckboxScreen'),
      ),
    );
  }
}
