import 'package:flutter/material.dart';
import 'dart:async';

class Splashscreen1Screen extends StatefulWidget {
  const Splashscreen1Screen({Key? key}) : super(key: key);

  @override
  State<Splashscreen1Screen> createState() => _Splashscreen1ScreenState();
}

class _Splashscreen1ScreenState extends State<Splashscreen1Screen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () => print('CallBack function'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: const Text("SplashScreen1"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child: Icon(
                          Icons.beach_access_rounded,
                          color: Theme.of(context).primaryColor,
                          size: 60.0,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          'Title or Text',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 30),
                  child: Text(
                    'This is Normal Splash screen\nv2.1.0',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
