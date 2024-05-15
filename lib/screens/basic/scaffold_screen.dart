import 'package:flutter/material.dart';
import 'package:myflutterbook/themes/app_theme.dart';

class ScaffoldScreen extends StatefulWidget {
  const ScaffoldScreen({Key? key}) : super(key: key);

  @override
  State<ScaffoldScreen> createState() => _ScaffoldScreenState();
}

class _ScaffoldScreenState extends State<ScaffoldScreen> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppTheme.primary,
          title: const Text('Scaffold Demo'),
        ),
        body: Center(child: Text('Ha presionado el botón $_count veces.')),
        backgroundColor: Colors.blueGrey.shade200,
        floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() => _count++),
          tooltip: 'Incrementar Contador',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
