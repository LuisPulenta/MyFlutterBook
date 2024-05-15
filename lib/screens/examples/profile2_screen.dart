import 'package:flutter/material.dart';

class Profile2Screen extends StatelessWidget {
  const Profile2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile2Screen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Profile2Screen'),
      ),
    );
  }
}
