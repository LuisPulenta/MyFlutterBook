import 'package:flutter/material.dart';

class Profile2Screen extends StatelessWidget {
  const Profile2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: const Text(
            'Profile',
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  // height: 200,
                  // width: 350,
                  child: const SizedBox(
                    // height: 250,
                    // width: 150,
                    child: CircleAvatar(
                      maxRadius: 100,
                      backgroundImage: AssetImage('assets/pepe_sanchez.jpg'),
                    ),
                  ),
                ),
                const Text(
                  'Abdulla Al Noman',
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                ),
                const Text('192.112.30'),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(20),
              height: 1,
              width: 340,
              color: const Color(0xffEB9524),
              // child: Divider(
              //   thickness: 1,
              // ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: const Text(
                'Profile',
                style: TextStyle(fontSize: 18.0, color: Colors.grey),
              ),
            ),
            ListTile(
              leading: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset('assets/pepe_sanchez.jpg')),
              title: const Text(
                'Profile',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    'assets/pepe_sanchez.jpg',
                  )),
              title: const Text(
                'Change Password',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              onTap: () {},
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: const Text(
                'Others',
                style: TextStyle(fontSize: 18.0, color: Colors.grey),
              ),
            ),
            ListTile(
              leading: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    'assets/pepe_sanchez.jpg',
                  )),
              title: const Text(
                'About',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    'assets/pepe_sanchez.jpg',
                  )),
              title: const Text(
                'Contact with us',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    'assets/pepe_sanchez.jpg',
                  )),
              title: const Text(
                'share',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    'assets/pepe_sanchez.jpg',
                  )),
              title: const Text(
                'Follow Us',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    'assets/pepe_sanchez.jpg',
                  )),
              title: const Text(
                'Log Out',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              onTap: () {},
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.all(20),
                child: const Text(
                  'App Version 1.0.0',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//*******************************************//
               //*** END ***//
            // Flutter Book //
//*******************************************//