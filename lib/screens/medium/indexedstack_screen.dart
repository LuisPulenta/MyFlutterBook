import 'package:flutter/material.dart';

class IndexedstackScreen extends StatefulWidget {
  const IndexedstackScreen({Key? key}) : super(key: key);

  @override
  State<IndexedstackScreen> createState() => _IndexedstackScreenState();
}

class _IndexedstackScreenState extends State<IndexedstackScreen> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Indexed Stack'),
      ),
      body: Column(
        children: [
          Expanded(
              child: IndexedStack(
            index: _index,
            children: [
              Container(
                color: Colors.orangeAccent,
                child: const Center(
                  child: Text('WIDGET 1'),
                ),
              ),
              Container(
                color: Colors.greenAccent,
                child: const Center(
                  child: Text('WIDGET 2'),
                ),
              ),
              Container(
                color: Colors.red,
                child: const Center(
                  child: Text('WIDGET 3'),
                ),
              ),
              Container(
                color: Colors.indigo,
                child: const Center(
                  child: Text('WIDGET 4'),
                ),
              ),
              Container(
                color: Colors.pink,
                child: const Center(
                  child: Text('WIDGET 5'),
                ),
              ),
            ],
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            if (_index == 4) {
              _index = 0;
            } else {
              _index++;
            }
          });
        },
        label: const Text('Tap Here!'),
        // icon: Icon,
      ),
    );
  }
}
