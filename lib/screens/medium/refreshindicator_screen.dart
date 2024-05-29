import 'package:flutter/material.dart';

class RefreshindicatorScreen extends StatelessWidget {
  const RefreshindicatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Refresh Indicator'),
        centerTitle: true,
      ),
      body: RefreshIndicator(
          color: Colors.white,
          backgroundColor: Colors.orangeAccent,
          displacement: 100,
          onRefresh: () async {
            // Replace this delay with the code to be executed during refresh
            // and return asynchronous code
            return Future<void>.delayed(const Duration(seconds: 3));
          },
          child: ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return const ListTile(
                  title: Text('Pull down here'),
                  subtitle: Text("Refresh indicator won't trigger"),
                );
              })),
    );
  }
}
