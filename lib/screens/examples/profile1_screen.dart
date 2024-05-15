import 'package:flutter/material.dart';

class Profile1Screen extends StatelessWidget {
  const Profile1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile1Screen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Profile1Screen'),
      ),
    );
  }
}
