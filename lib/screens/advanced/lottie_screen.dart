import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieScreen extends StatelessWidget {
  const LottieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lottie'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          // Load a Lottie file from your assets
          // Lottie.asset(
          //   'assets_lottie/Animation - 1708443549008.json',
          //   height: 200,
          // ),
          Lottie.network(
            'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json',
            height: 100,
          ),

          const Divider(),

          // Load a Lottie file from a remote url
          const Text('Load a Lottie file from a remote url'),
          Lottie.network(
            'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json',
            height: 100,
          ),

          const Divider(),
          // Load an animation and its images from a zip file
          // Lottie.asset(
          //   'assets_lottie/angel.zip',
          //   height: 200,
          // ),
          Lottie.network(
            'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json',
            height: 100,
          ),
        ],
      ),
    );
  }
}
