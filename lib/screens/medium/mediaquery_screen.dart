import 'package:flutter/material.dart';

class MediaqueryScreen extends StatelessWidget {
  const MediaqueryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQuery'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                child: FlutterLogo(
              size: MediaQuery.of(context).size.width *
                  0.50, //Image height 40% / 100%
            )),
            const SizedBox(
              height: 10,
            ),
            const Text('height: MediaQuery.of(context).size.height *0.4,'),
            Container(
              color: Colors.orangeAccent,
              height: MediaQuery.of(context).size.height *
                  0.4, //screen height 40% / 100%
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: (MediaQuery.of(context).size.height) *
                  0.20, //screen height 20% / 100%
              width: MediaQuery.of(context).size.width *
                  0.92, //screen width 92% / 100%
              color: Colors.green,
              child: const Text(
                  'height: (MediaQuery.of(context).size.height) *0.20,\n '
                  'width: MediaQuery.of(context).size.width *0.92,'),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
