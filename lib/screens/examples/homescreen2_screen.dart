import 'package:flutter/material.dart';

class Homescreen2Screen extends StatelessWidget {
  const Homescreen2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          leading: const Icon(Icons.menu_open_sharp),
        ),
        body: Column(
          children: [
            Image.asset('assets/logo.png'),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: const Text(
                            'Title',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'Sub Title',
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.red,
                  ),
                  const Text('1'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Icon(
                  Icons.call,
                ),
                Icon(
                  Icons.near_me,
                ),
                Icon(
                  Icons.share,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(30),
              child: const Text(
                'We used that sample here for easy reference.'
                'You can check this in google flutter UI Tutorial for more informations about this design',
                softWrap: true,
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
      ),
    );
  }
}
