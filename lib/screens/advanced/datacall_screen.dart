import 'package:flutter/material.dart';

class DatacallScreen extends StatelessWidget {
  const DatacallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DatacallScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('DatacallScreen'),
      ),
    );
  }
}
