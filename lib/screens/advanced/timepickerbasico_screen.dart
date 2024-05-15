import 'package:flutter/material.dart';

class TimepickerbasicoScreen extends StatelessWidget {
  const TimepickerbasicoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TimepickerbasicoScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('TimepickerbasicoScreen'),
      ),
    );
  }
}
