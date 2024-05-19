import 'package:flutter/material.dart';

class SilvergridScreen extends StatelessWidget {
  const SilvergridScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Silver Grid'),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.red[100 * (index % 9)],
                  child: Text('Grid item $index'),
                );
              },
              childCount: 40,
            ),
          ),
        ],
      ),
    );
  }
}
