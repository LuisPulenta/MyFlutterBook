import 'package:flutter/material.dart';
import 'package:myflutterbook/themes/app_theme.dart';

class AboutdialogScreen extends StatelessWidget {
  const AboutdialogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primary,
        title: const Text('About Dialog'),
      ),
      body: Card(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              showAboutDialog(
                  context: context,
                  applicationIcon: SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      'assets/ic_launcher.png',
                    ),
                  ),
                  applicationVersion: '2.2.1',
                  applicationName: 'Flutter Book',
                  applicationLegalese: 'application Legalese Note',
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Learn how to create a flutter widget using basic code.',
                        textAlign: TextAlign.center,
                      ),
                    )
                  ]);
            },
            child: const Text('Show About Dialog'),
          ),
        ),
      ),
    );
  }
}
