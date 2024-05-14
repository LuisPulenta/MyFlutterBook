import 'package:flutter/material.dart';

class SilverAppbarScreen extends StatelessWidget {
  const SilverAppbarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          snap: false,
          pinned: true,
          floating: false,
          flexibleSpace: const FlexibleSpaceBar(
            centerTitle: true,
            title: Text("SilverAppBar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                )),
            background: FlutterLogo(),
          ),
          expandedHeight: 230,
          backgroundColor: Colors.purpleAccent[400],
          leading: IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.comment),
              tooltip: 'Comment Icon',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'Setting Icon',
              onPressed: () {},
            ),
          ],
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => ListTile(
              tileColor: (index % 2 == 0)
                  ? const Color.fromARGB(255, 147, 223, 223)
                  : const Color.fromARGB(255, 2, 141, 129),
              title: Center(
                child: Text('$index',
                    style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 50,
                        color: Color.fromARGB(255, 255, 255, 255))),
              ),
            ),
            childCount: 20,
          ),
        )
      ],
    ));
  }
}
