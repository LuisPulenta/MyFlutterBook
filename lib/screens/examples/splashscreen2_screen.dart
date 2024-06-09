import 'package:flutter/material.dart';

class Splashscreen2Screen extends StatefulWidget {
  const Splashscreen2Screen({super.key});

  @override
  _Splashscreen2ScreenState createState() => _Splashscreen2ScreenState();
}

class _Splashscreen2ScreenState extends State<Splashscreen2Screen>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    final CurvedAnimation curve =
        CurvedAnimation(parent: _controller, curve: Curves.ease);
    animation = Tween(begin: 2.0, end: 0.2).animate(curve);
    animation.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SplashScreen2"),
        centerTitle: true,
      ),
      body: Container(
          color: Theme.of(context).colorScheme.secondary,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: FadeTransition(
            opacity: animation,
            child: const FlutterLogo(),
          )),
    );
  }
}
