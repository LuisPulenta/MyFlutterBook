import 'package:flutter/material.dart';

class ShareplusScreen extends StatelessWidget {
  const ShareplusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShareplusScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('ShareplusScreen'),
      ),
    );
  }
}
