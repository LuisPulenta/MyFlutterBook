import 'package:flutter/material.dart';

class StatenotifierScreen extends StatelessWidget {
  const StatenotifierScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatenotifierScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('StatenotifierScreen'),
      ),
    );
  }
}
