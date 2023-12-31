import 'package:evfi_duplicate/signUp.dart';
import 'package:evfi_duplicate/verify.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatelessWidget {
  final Color myColor = Color.fromRGBO(208, 187, 30, 0.5);
  final Color myColor2 = Color.fromRGBO(99,99,95,1);
  final Color mainColor = Color.fromRGBO(255,216,15,1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
              Image.asset(
                'assets/logo.png',
                height: 350,
                width: 350,
              ),
            SizedBox(height: 30),
            Text(
              'login',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 52,
                fontFamily: 'fonts/Poppins',
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(-5.0, 4.0),
                      color: myColor
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 20,
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupPage()),
                  );
              // Add your login logic here
              },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black, // Set the background color to black
                ),
              child: Text(
                  'or SignUp',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            SizedBox(height: 80),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: myColor2,
                    hintText: '',
                    labelText: '+91- 7303440170',
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 80),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow.withOpacity(0.5)),
                        borderRadius: BorderRadius.all(Radius.circular(10))// Border color when the TextField is not focused
                    ),
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                    ),
                    hintStyle: TextStyle(
                        color: Colors.white,
                    ),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: 330,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Verify()),
                  );
                  // Add your login logic here
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), // Set the border radius here
                  ),
                  primary: Colors.yellow, // Button background color
                ),
                child: Text(
                    'send otp',
                      style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                        fontSize: 24
                      ),
                ),
              ),
            ),
            // Rest of your widgets
          ],
        ),
      ),
    );
  }
}
