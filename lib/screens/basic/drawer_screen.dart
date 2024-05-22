import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Drawer Demo'),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.zero,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                ),
                child: const UserAccountsDrawerHeader(
                  accountName: Text('Pepe Sanchez'),
                  accountEmail: Text('00000000007'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/pepe_sanchez.jpg'),
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.group,
                  size: 35.0,
                ),
                title: Text(
                  'New Group',
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.contact_page,
                  size: 35.0,
                ),
                title: Text(
                  'Contacts',
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.call,
                  size: 35.0,
                ),
                title: Text(
                  'Calls',
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.people,
                  size: 35.0,
                ),
                title: Text(
                  'People Nearby',
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.message,
                  size: 35.0,
                ),
                title: Text(
                  'Saved Message',
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.settings,
                  size: 35.0,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              const Divider(
                thickness: 4,
              ),
              const ListTile(
                leading: Icon(
                  Icons.insert_invitation,
                  size: 35.0,
                ),
                title: Text(
                  'Invite Friends',
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.featured_play_list_sharp,
                  size: 35.0,
                ),
                title: Text(
                  'Telegram Features',
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
            ],
          ),
        ),

        // backgroundColor: Colors.blueGrey,
        body: const Center(
          child: Text(
            'Home Page',
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
        ),
      ),
    );
  }
}
