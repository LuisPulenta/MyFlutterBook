import 'package:flutter/material.dart';

class HeroScreen extends StatelessWidget {
  const HeroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Hero'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20.0,
            ),
            ListTile(
              leading: GestureDetector(
                onTap: () => _secondPage(context),
                child: const Hero(
                  tag: 'tag',
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/ic_launcher.png'),
                  ),
                ),
              ),
              title: const Text(
                'Click on the image to see Hero Animations.',
              ),
            ),
          ],
        ),
      ),
    );
  }

//---------------------------------------------------------------------

  void _secondPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Scaffold(
          body: Scaffold(
            appBar: AppBar(
              title: const Text('Second Page'),
              centerTitle: true,
            ),
            body: Center(
              child: Hero(
                tag: 'tag',
                child: Image.asset('assets/ic_launcher.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
