import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedroundingScreen extends StatefulWidget {
  const AnimatedroundingScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedroundingScreen> createState() => _AnimatedroundingScreenState();
}

class _AnimatedroundingScreenState extends State<AnimatedroundingScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Rounding'),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          child: const SizedBox(
            width: 200.0,
            height: 200.0,
            child: Center(
              child: FlutterLogo(
                size: 200,
              ),
            ),
          ),
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: _controller.value * 2.0 * pi,
              child: child,
            );
          },
        ),
      ),
    );
  }
}
