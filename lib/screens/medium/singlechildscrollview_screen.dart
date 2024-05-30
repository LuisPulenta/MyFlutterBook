import 'package:flutter/material.dart';

class SinglechildscrollviewScreen extends StatelessWidget {
  const SinglechildscrollviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SingleChildScrollView'),
      ),
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: const Color(0xff72e11f),
                height: 300.0,
                alignment: Alignment.center,
                child: const Text('Fixed Height Content'),
              ),
              Container(
                color: const Color(0xff008000),
                height: 250.0,
                alignment: Alignment.center,
                child: const Text('Fixed Height Content'),
              ),
              Container(
                color: const Color(0xffcb4949),
                height: 250.0,
                alignment: Alignment.center,
                child: const Text('Fixed Height Content!'),
              ),
              Container(
                color: const Color(0xff34b45a),
                height: 300.0,
                alignment: Alignment.center,
                child: const Text('Fixed Height Content!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
