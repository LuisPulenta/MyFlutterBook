import 'package:flutter/material.dart';
import 'package:flutter_highlighter/flutter_highlighter.dart';
import 'package:flutter_highlighter/themes/github.dart';

class FluttercodehighlightScreen extends StatelessWidget {
  const FluttercodehighlightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var code = '''import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold(
      body: Column(
        children: [
          Text('A random idea:'),
          Text(appState.current.asLowerCase),
        ],
      ),
    );
  }
}
''';

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Code Highlight"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          HighlightView(
            // The original code to be highlighted
            code,

            // Specify language
            // It is recommended to give it a value for performance
            language: 'dart',

            // Specify highlight theme
            // All available themes are listed in `themes` folder
            theme: githubTheme,

            // Specify padding
            padding: const EdgeInsets.all(12),

            // Specify text style
            textStyle: const TextStyle(
              fontFamily: 'My awesome monospace font',
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
