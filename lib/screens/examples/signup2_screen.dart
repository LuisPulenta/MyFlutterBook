import 'package:flutter/material.dart';

class Signup2Screen extends StatefulWidget {
  const Signup2Screen({super.key});

  @override
  _Signup2ScreenState createState() => _Signup2ScreenState();
}

bool _secureText = true;
TextEditingController _namehere = TextEditingController();

class _Signup2ScreenState extends State<Signup2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              height: MediaQuery.of(context).size.height * 0.60,
              width: MediaQuery.of(context).size.width * 100,
              top: 50,
              child: Container(
                color: const Color(0xffEB9524),
                // width: double.infinity,
                height: 120,
              ),
            ),
            Positioned(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.77,
              top: -10,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  side: BorderSide(
                    color: Colors.grey.withOpacity(0.2),
                    width: 1,
                  ),
                ),
                elevation: 15,
                child: Column(
                  children: [
                    SizedBox(
                      // margin: EdgeInsets.only(top: 150),
                      height: MediaQuery.of(context).size.height * 0.11,
                      width: MediaQuery.of(context).size.width * 0.50,
                      child: Image.asset('assets/logo.png'),
                    ),
                    const Text(
                      'Create a Account',
                      style: TextStyle(
                        color: Color(0xffEB9524),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: TextFormField(
                        controller: _namehere,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            labelText: 'Student Name',
                            hintText: "Your Full Name"),
                        keyboardType: TextInputType.text,
                        obscureText: false,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: TextFormField(
                        controller: _namehere,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            labelText: 'Your Username',
                            hintText: "Your Username"),
                        keyboardType: TextInputType.text,
                        obscureText: false,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: TextFormField(
                        controller: _namehere,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            labelText: 'Student ID',
                            hintText: "Your Id"),
                        keyboardType: TextInputType.number,
                        obscureText: false,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: TextFormField(
                        controller: _namehere,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            labelText: 'Student Email',
                            hintText: "Your Email"),
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            labelText: 'Password',
                            hintText: "Your Password",
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _secureText = !_secureText;
                                });
                              },
                              icon: Icon(_secureText
                                  ? Icons.remove_red_eye
                                  : Icons.remove_red_eye_outlined),
                            )),
                        keyboardType: TextInputType.text,
                        obscureText: _secureText,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.42,
                        decoration: const BoxDecoration(
                            // boxShadow: [BoxShadow(
                            //     offset: Offset(10.0, 20.0),
                            //     color: Colors.blueGrey,
                            //     blurRadius: 30.0
                            // )],
                            color: Color(0xffEB9524),
                            borderRadius: BorderRadius.only(
                                // bottomLeft: Radius.circular(22.0),
                                topLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0))),
                        child: const Center(
                            child: Text(
                          'Sign Up',
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        )),
                      ),
                      onTap: () {},
                    ),
                  ],
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
                //*** END***//
              // Flutter Book //
//*******************************************//