import 'package:flutter/material.dart';
import 'package:myflutterbook/themes/app_theme.dart';

class Login1Screen extends StatelessWidget {
  const Login1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      style: const TextStyle(fontSize: 18.0),
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          )),
    );

    final passwordField = TextField(
      obscureText: true,
      style: const TextStyle(fontSize: 18.0),
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          )),
    );

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: const Color(0xff5fcde3),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 15.0, 05.0),
        onPressed: () {},
        child: const Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20.0,
              color: AppTheme.primary,
              fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login1"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 1.5,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100.0,
                      child: Image.asset(
                        "assets/logo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 48.0),
                    emailField,
                    const SizedBox(height: 24.0),
                    passwordField,
                    const SizedBox(
                      height: 36.0,
                    ),
                    loginButton,
                    const SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
