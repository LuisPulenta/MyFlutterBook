import 'package:flutter/material.dart';

class AboutdialogScreen extends StatelessWidget {
  const AboutdialogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AboutdialogScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('AboutdialogScreen'),
      ),
    );
  }
}
