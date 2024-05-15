import 'package:flutter/material.dart';

class YoutubeplayerScreen extends StatelessWidget {
  const YoutubeplayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('YoutubeplayerScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('YoutubeplayerScreen'),
      ),
    );
  }
}
