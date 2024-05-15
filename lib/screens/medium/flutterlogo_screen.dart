import 'package:flutter/material.dart';

class FlutterlogoScreen extends StatelessWidget {
  const FlutterlogoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterlogoScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('FlutterlogoScreen'),
      ),
    );
  }
}
