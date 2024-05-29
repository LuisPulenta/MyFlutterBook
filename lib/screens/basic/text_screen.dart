import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Simple text Widget
              const Text('Texto Simple'),

              // Simple text Widget style
              const Text(
                'Paragraphs are the building blocks of papers.',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),

              // Shadow Text
              const Text(
                'Shadow Text',
                style: TextStyle(fontSize: 20.0, shadows: <Shadow>[
                  Shadow(
                    color: Colors.amber,
                    offset: Offset(2, 4),
                  )
                ]),
              ),

              //Text.rich Text widget can display a paregraph with differently style
              // It's similar to Rich Text
              const Text.rich(
                TextSpan(text: ' hi Im', children: [
                  TextSpan(
                      text: 'Italic',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                      )),
                  TextSpan(
                      text: 'Normal',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      )),
                  TextSpan(
                      text: 'Bold',
                      style: TextStyle(fontWeight: FontWeight.bold))
                ]),
              ),

              //Rich Text Which gives you more control over the text style
              RichText(
                  softWrap: true,
                  text: TextSpan(
                      text: 'Im',
                      style: DefaultTextStyle.of(context).style,
                      children: const [
                        TextSpan(
                          text: 'similar to',
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: 22.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Text.rich',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ]))
            ],
          ),
        ),
      ),
    );
  }
}
