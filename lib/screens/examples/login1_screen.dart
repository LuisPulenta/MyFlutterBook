import 'package:flutter/material.dart';

class Login1Screen extends StatelessWidget {
  const Login1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login1Screen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Login1Screen'),
      ),
    );
  }
}
