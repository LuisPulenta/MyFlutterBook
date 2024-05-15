import 'package:flutter/material.dart';

class GridviewScreen extends StatelessWidget {
  const GridviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridviewScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('GridviewScreen'),
      ),
    );
  }
}
