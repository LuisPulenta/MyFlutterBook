import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedbuilderScreen extends StatefulWidget {
  const AnimatedbuilderScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedbuilderScreen> createState() => _AnimatedbuilderScreenState();
}

class _AnimatedbuilderScreenState extends State<AnimatedbuilderScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationcontroller;

  @override
  void initState() {
    super.initState();
    _animationcontroller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _animationcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final rotateAnimation =
        Tween<double>(begin: 0, end: pi).animate(_animationcontroller);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Builder'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: rotateAnimation,
              builder: (context, child) {
                return Transform.rotate(
                  angle: rotateAnimation.value,
                  child: child,
                );
              },
              child: const FlutterLogo(size: 72.0),
            ),
            ElevatedButton(
              onPressed: () => _animationcontroller.forward(),
              child: const Text('Forward animation'),
            ),
            ElevatedButton(
              onPressed: () => _animationcontroller.reverse(),
              child: const Text('Reverse animation'),
            ),
          ],
        ),
      ),
    );
  }
}
