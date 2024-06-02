import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

const _nTexts = ['Hello!', 'Welcome to', 'Flutter Book!'];
const _nTextstyle = TextStyle(
  fontSize: 32.0,
  fontWeight: FontWeight.bold,
  color: Colors.blueAccent,
);

class AnimatedtextkitScreen extends StatelessWidget {
  const AnimatedtextkitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const titleTextStyle = TextStyle(
      fontSize: 18,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Text Kit'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          const Text('Text Liquid Fill', style: titleTextStyle),
          SizedBox(
            width: 250.0,
            child: TextLiquidFill(
              text: 'Flutter Book',
              waveColor: Colors.blueAccent,
              boxBackgroundColor: Colors.orangeAccent,
              textStyle: const TextStyle(
                fontSize: 80.0,
                fontWeight: FontWeight.bold,
              ),
              boxHeight: 300.0,
            ),
          ),
          const Divider(),
          const Text('Rotate Animated Text Kit', style: titleTextStyle),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(width: 20.0, height: 100.0),
              const Text(
                'Be',
                style: TextStyle(fontSize: 43.0),
              ),
              const SizedBox(width: 20.0, height: 100.0),
              DefaultTextStyle(
                style: _nTextstyle,
                child: AnimatedTextKit(
                  animatedTexts: [
                    for (final text in _nTexts)
                      RotateAnimatedText(
                        text,
                      )
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                  repeatForever: true,
                ),
              ),
            ],
          ),
          const Divider(),
          const Text('Typewriter Animated Text Kit', style: titleTextStyle),
          SizedBox(
            width: 250.0,
            child: DefaultTextStyle(
              style: _nTextstyle,
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText('Discipline is the best tool'),
                  TypewriterAnimatedText('Design first, then code'),
                  TypewriterAnimatedText('Do not patch bugs out, rewrite them'),
                  TypewriterAnimatedText(
                      'Do not test bugs out, design them out'),
                ],
                onTap: () {
                  print("Tap Event");
                },
                repeatForever: true,
              ),
            ),
          ),
          const Divider(),
          const Text('Fade Animated TextKit', style: titleTextStyle),
          SizedBox(
            height: 64,
            child: AnimatedTextKit(
              onTap: () => print("Tap Event"),
              animatedTexts: [
                for (final text in _nTexts)
                  FadeAnimatedText(
                    text,
                    textStyle: _nTextstyle,
                  )
              ],
              repeatForever: true,
            ),
          ),
          const Divider(),
          const Text('Typewriter  Animated Text Kit', style: titleTextStyle),
          AnimatedTextKit(
            onTap: () => print("Tap Event"),
            animatedTexts: [
              for (final text in _nTexts)
                TyperAnimatedText(
                  text,
                  textStyle: _nTextstyle,
                  textAlign: TextAlign.start,
                )
            ],
          ),
          const Divider(),
          const Text('Wavy Animated Text Kit', style: titleTextStyle),
          SizedBox(
            height: 128,
            child: AnimatedTextKit(
              animatedTexts: [
                for (final text in _nTexts)
                  WavyAnimatedText(
                    text,
                    textStyle: _nTextstyle,
                    textAlign: TextAlign.center,
                  )
              ],
              repeatForever: true,
            ),
          ),
          const Divider(),
          const Text('Scale Animated Text Kit', style: titleTextStyle),
          SizedBox(
            height: 64,
            width: 100,
            child: AnimatedTextKit(
              animatedTexts: [
                for (final text in _nTexts)
                  ScaleAnimatedText(
                    text,
                    textStyle: _nTextstyle,
                    textAlign: TextAlign.center,
                  )
              ],
              repeatForever: true,
            ),
          ),
        ],
      ),
    );
  }
}
