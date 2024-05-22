import 'package:flutter/material.dart';
import 'package:myflutterbook/themes/app_theme.dart';

class AnimatedpaddingScreen extends StatefulWidget {
  const AnimatedpaddingScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedpaddingScreen> createState() => _AnimatedpaddingScreenState();
}

class _AnimatedpaddingScreenState extends State<AnimatedpaddingScreen> {
  double padding = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primary,
        title: const Text('Animated Padding'),
      ),
      body: Center(
        child: AnimatedPadding(
          padding: EdgeInsets.all(padding),
          duration: const Duration(seconds: 3),
          child: InkWell(
            child: Container(
              color: Colors.redAccent,
              child: const Center(child: Text('Click Here!')),
            ),
            onTap: () {
              setState(() {
                padding = (padding == 10.0) ? 60.0 : 10.0;
              });
            },
          ),
        ),
      ),
    );
  }
}
