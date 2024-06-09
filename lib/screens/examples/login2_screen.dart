import 'package:flutter/material.dart';

class Login2Screen extends StatefulWidget {
  const Login2Screen({super.key});

  @override
  _Login2ScreenState createState() => _Login2ScreenState();
}

class _Login2ScreenState extends State<Login2Screen> {
  bool isChecked = false;
  bool Check = true;
  bool burger = false;

  bool _secureText = true;
  final TextEditingController _namehere = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: -10,
              height: MediaQuery.of(context).size.height * 0.30,
              width: MediaQuery.of(context).size.width * 100,
              child: Container(
                color: const Color(0xffEB9524),
              )),
          Positioned(
              bottom: -10,
              height: MediaQuery.of(context).size.height * 0.70,
              width: MediaQuery.of(context).size.width * 0.95,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  side: BorderSide(
                    color: Colors.grey.withOpacity(0.2),
                    width: 1,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.11,
                      width: MediaQuery.of(context).size.width * 0.50,
                      child: Image.asset(
                          'assets/logo.png'), // remove image background
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: TextFormField(
                        controller: _namehere,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            labelText: 'Student Id',
                            hintText: "Your Id"),
                        keyboardType: TextInputType.number,
                        obscureText: false,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
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
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 80),
                      child: Column(
                        children: [
                          Center(
                            child: Row(
                              children: [
                                const Center(child: Text('Remember Username')),
                                const SizedBox(
                                  width: 5,
                                ),
                                Checkbox(
                                    value: isChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isChecked = value!;
                                      });
                                    })
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.08,
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
                          'Log In',
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        )),
                      ),
                      onTap: () {},
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: const Text(
                        'Forget Password ?',
                        style: TextStyle(color: Colors.grey),
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
