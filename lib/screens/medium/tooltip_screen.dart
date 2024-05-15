import 'package:flutter/material.dart';

class TooltipScreen extends StatelessWidget {
  const TooltipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TooltipScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('TooltipScreen'),
      ),
    );
  }
}
