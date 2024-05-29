import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Stack',
          ),
        ),
        body: Container(
          height: 400,
          width: 400,
          color: Colors.red,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                color: Colors.yellow,
                height: 140,
                width: 140,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  color: Colors.indigoAccent,
                  height: 130,
                  width: 140,
                ),
              ),
              Align(
                alignment: const Alignment(1, 1),
                child: Container(
                  color: Colors.tealAccent,
                  height: 130,
                  width: 140,
                ),
              ),
              Positioned(
                  height: 110,
                  width: 110,
                  bottom: -10,
                  left: 35,
                  child: Container(
                    color: Colors.teal,
                    height: 140,
                    width: 140,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
