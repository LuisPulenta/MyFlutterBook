import 'package:flutter/material.dart';
import 'package:myflutterbook/themes/app_theme.dart';

class MaterialAppScreen extends StatelessWidget {
  const MaterialAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: AppTheme.secondary,
          appBar: AppBar(
            backgroundColor: AppTheme.primary,
            title: const Text('MaterialApp Demo'),
          ),
          body: const Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Un práctico widget que encapsula una serie de widgets, que normalmente son necesarios para las aplicaciones de Material Design.',
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
