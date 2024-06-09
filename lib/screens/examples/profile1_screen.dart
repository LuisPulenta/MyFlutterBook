import 'package:flutter/material.dart';

class Profile1Screen extends StatelessWidget {
  const Profile1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  const Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/pepe_sanchez.jpg'),
                      radius: 70.0,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'User Name',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'User Number/01*********',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'user@gmail.com',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Address:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 0, 16, 0),
                        child: Column(
                          children: const [
                            Text('User Address Line 1'),
                            Text('User Address Line 2'),
                            Text('User Address Line 3'),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Country:',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 0, 16, 16),
                        child: Text('User Country Name'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//*******************************************//
               //*** END***//
              // Flutter Book //
//*******************************************//