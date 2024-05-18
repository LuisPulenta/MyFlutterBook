import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Scaffold(
        // backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
        appBar: AppBar(
          // iconTheme: IconThemeData(color: Colors.black),
          // backgroundColor: Colors.white,
          title: const Text(
            'Listview Demo',
            style: TextStyle(
                // color: Colors.black,
                ),
          ),
        ),

        body: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.five_g),
              title: Text('Write your title'),
              subtitle: Text('write your subtitle'),
              trailing: Icon(Icons.ac_unit),
            ),
            ListTile(
              leading: Icon(Icons.five_g),
              title: Text('Write your title'),
              subtitle: Text('write your subtitle'),
              trailing: Icon(Icons.ac_unit),
            ),
            ListTile(
              leading: Icon(Icons.five_g),
              title: Text('Write your title'),
              subtitle: Text('write your subtitle'),
              trailing: Icon(Icons.ac_unit),
            ),
            ListTile(
              leading: Icon(Icons.five_g),
              title: Text('Write your title'),
              subtitle: Text('write your subtitle'),
              trailing: Icon(Icons.ac_unit),
            ),
            ListTile(
              leading: Icon(Icons.five_g),
              title: Text('Write your title'),
              subtitle: Text('write your subtitle'),
              trailing: Icon(Icons.ac_unit),
            ),
            ListTile(
              leading: Icon(Icons.five_g),
              title: Text('Write your title'),
              subtitle: Text('write your subtitle'),
              trailing: Icon(Icons.ac_unit),
            ),
            ListTile(
              leading: Icon(Icons.five_g),
              title: Text('Write your title'),
              subtitle: Text('write your subtitle'),
              trailing: Icon(Icons.ac_unit),
            ),
            ListTile(
              leading: Icon(Icons.five_g),
              title: Text('Write your title'),
              subtitle: Text('write your subtitle'),
              trailing: Icon(Icons.ac_unit),
            ),
            ListTile(
              leading: Icon(Icons.five_g),
              title: Text('Write your title'),
              subtitle: Text('write your subtitle'),
              trailing: Icon(Icons.ac_unit),
            ),
            ListTile(
              leading: Icon(Icons.five_g),
              title: Text('Write your title'),
              subtitle: Text('write your subtitle'),
              trailing: Icon(Icons.ac_unit),
            ),
            ListTile(
              leading: Icon(Icons.five_g),
              title: Text('Write your title'),
              subtitle: Text('write your subtitle'),
              trailing: Icon(Icons.ac_unit),
            ),
          ],
        ),
      ),
    );
  }
}
