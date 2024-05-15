import 'package:flutter/material.dart';

class FlutterblocScreen extends StatelessWidget {
  const FlutterblocScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterblocScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('FlutterblocScreen'),
      ),
    );
  }
}
