import 'package:flutter/material.dart';

class AlignScreen extends StatelessWidget {
  const AlignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Align'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text('Alignment.topRight:'),
          Center(
            child: Container(
              height: 120.0,
              width: 120.0,
              color: Colors.blue[50],
              child: const Align(
                alignment: Alignment.topRight,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Alignment Origin:'),
          Center(
            child: Container(
              height: 120.0,
              width: 120.0,
              color: Colors.blue[50],
              child: const Align(
                alignment: Alignment(0.2, 0.6),
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Fractional Offset Origin:'),
          Center(
            child: Container(
              height: 120.0,
              width: 120.0,
              color: Colors.blue[50],
              child: const Align(
                alignment: FractionalOffset(0.2, 0.6),
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
