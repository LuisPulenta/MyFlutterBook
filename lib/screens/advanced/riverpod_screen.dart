import 'package:flutter/material.dart';

class RiverpodScreen extends StatelessWidget {
  const RiverpodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RiverpodScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('RiverpodScreen'),
      ),
    );
  }
}
