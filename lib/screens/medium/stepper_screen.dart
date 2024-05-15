import 'package:flutter/material.dart';

class StepperScreen extends StatelessWidget {
  const StepperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StepperScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('StepperScreen'),
      ),
    );
  }
}
