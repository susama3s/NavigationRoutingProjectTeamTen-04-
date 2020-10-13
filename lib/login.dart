import 'package:flutter/material.dart';
import 'package:practice/helper.dart';
import 'package:practice/welcome.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 150,
              child: Image.asset('images/userlogo.png'),
            ),
            SizedBox(height: 40.0,),
            TextField(
              textAlign: TextAlign.center,
              onChanged: (value) {
                // Do something with user input
              },
              decoration: TextFieldDecoration.copyWith(hintText: "Enter your username/email"),
            ),

            SizedBox(height: 20.0,),
            TextField(
              obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  // Do something with user input
                },
                decoration: TextFieldDecoration.copyWith(hintText: "Enter your password")

            ),
            SizedBox(height: 20.0,),
            RoundedButton(
              title: 'Log In',
              colour: Colors.redAccent,
              onPressed: () {

              },
            ),

            SizedBox(height: 20.0,),
            RoundedButton(
              title: 'Back to home',
              colour: Colors.indigoAccent,
              onPressed: () {
                Navigator.pushNamed(context, WelcomeScreen.id);

              },
            )
          ],
        ),
      ),
    );
  }
}
