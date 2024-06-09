import 'package:flutter/material.dart';

class Homescreen1Screen extends StatelessWidget {
  const Homescreen1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
          leading: const Icon(Icons.menu_open),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 200,
              child: Card(child: Image.asset('assets/logo.png')),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Card(
                  child: SizedBox(
                    height: 150,
                    width: 160,
                    child: Center(
                      child: Text(
                        'User Items',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  // color: Colors.indigoAccent,
                ),
                Card(
                  child: SizedBox(
                    height: 150,
                    width: 160,
                    child: Center(
                      child: Text(
                        'User Items',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Card(
                  child: SizedBox(
                    height: 150,
                    width: 160,
                    child: Center(
                      child: Text(
                        'User Items',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Card(
                  child: SizedBox(
                    height: 150,
                    width: 160,
                    child: Center(
                      child: Text(
                        'User Items',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
