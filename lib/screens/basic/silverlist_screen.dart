import 'package:flutter/material.dart';

import 'dart:math';

class SilverlistScreen extends StatelessWidget {
  const SilverlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Silver List'),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate:
                  SliverChildBuilderDelegate((context, int index) => Container(
                        color: Color(
                                (Random().nextDouble() * 0xffffff).toInt() << 0)
                            .withOpacity(1.0),
                        height: 100,
                      )))
        ],
      ),
    );
  }
}
