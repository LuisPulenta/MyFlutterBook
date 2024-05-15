import 'package:flutter/material.dart';

class IconsScreen extends StatelessWidget {
  const IconsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IconsScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('IconsScreen'),
      ),
    );
  }
}
