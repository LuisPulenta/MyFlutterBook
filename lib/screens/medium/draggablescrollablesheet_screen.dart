import 'package:flutter/material.dart';
import 'package:myflutterbook/themes/app_theme.dart';

class DraggablescrollablesheetScreen extends StatefulWidget {
  const DraggablescrollablesheetScreen({Key? key}) : super(key: key);

  @override
  State<DraggablescrollablesheetScreen> createState() =>
      _DraggablescrollablesheetScreenState();
}

class _DraggablescrollablesheetScreenState
    extends State<DraggablescrollablesheetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primary,
        title: const Text('Draggable Scrollable'),
      ),
      body: DraggableScrollableSheet(
        // initialChildSize: .2,
        minChildSize: .3,
        maxChildSize: .9,
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            color: Colors.lightGreen[300],
            child: ListView(
              controller: scrollController,
              children: const [
                ListTile(
                  title: Text(
                    "WIDGET 1",
                  ),
                  subtitle: Text(
                    'Subtitle',
                  ),
                ),
                ListTile(
                  title: Text(
                    "WIDGET 2",
                  ),
                  subtitle: Text(
                    'Subtitle',
                  ),
                ),
                ListTile(
                  title: Text(
                    "WIDGET 3",
                  ),
                  subtitle: Text(
                    'Subtitle',
                  ),
                ),
                ListTile(
                  title: Text(
                    "WIDGET 4",
                  ),
                  subtitle: Text(
                    'Subtitle',
                  ),
                ),
                ListTile(
                  title: Text(
                    "WIDGET 5",
                  ),
                  subtitle: Text(
                    'Subtitle',
                  ),
                ),
                ListTile(
                  title: Text(
                    "WIDGET 6",
                  ),
                  subtitle: Text(
                    'Subtitle',
                  ),
                ),
                ListTile(
                  title: Text(
                    "WIDGET 7",
                  ),
                  subtitle: Text(
                    'Subtitle',
                  ),
                ),
                ListTile(
                  title: Text(
                    "WIDGET 8",
                  ),
                  subtitle: Text(
                    'Subtitle',
                  ),
                ),
                ListTile(
                  title: Text(
                    "WIDGET 9",
                  ),
                  subtitle: Text(
                    'Subtitle',
                  ),
                ),
                ListTile(
                  title: Text(
                    "WIDGET 10",
                  ),
                  subtitle: Text(
                    'Subtitle',
                  ),
                ),
                ListTile(
                  title: Text(
                    "WIDGET 11",
                  ),
                  subtitle: Text(
                    'Subtitle',
                  ),
                ),
                ListTile(
                  title: Text(
                    "WIDGET 12",
                  ),
                  subtitle: Text(
                    'Subtitle',
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
