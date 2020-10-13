import 'package:flutter/material.dart';
import 'package:practice/helper.dart';
import 'package:practice/registration.dart';
import 'package:practice/login.dart';



class WelcomeScreen extends StatefulWidget {

  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
            Row(
              children: [
                SizedBox(width: 20.0,),
                Container(
                  height: 60.0,
                  child: Image.asset('images/userlogo.png'),
                ),
                SizedBox(width: 20.0,),

                Text(
                  'Friend Chat',
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Sansita_Swashed',
                  ),
                )

              ],
            ),

            SizedBox(height: 40.0,),

            RoundedButton(
              title: 'Register',
              colour: Colors.deepPurple,
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),

            RoundedButton(
              title: 'Log In',
              colour: Colors.redAccent,
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);

              },
            )
          ],
        ),
      ),
    );
  }
}

