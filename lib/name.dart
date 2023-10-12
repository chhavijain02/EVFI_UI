import 'package:evfi_duplicate/onboarding1.dart';
import 'package:flutter/material.dart';
class Name extends StatelessWidget {
  final Color myColor = Color.fromRGBO(208, 187, 30, 0.5);
  final Color myColor2 = Color.fromRGBO(99, 99, 95, 1);
  final Color mainColor = Color.fromRGBO(255,216,15,1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 50),
            Image.asset(
              'assets/head.png',
              height: 130,
              width: 130,
            ),
            Image.asset(
              'assets/body.png',
              height: 200,
              width: 200,
            ),
            SizedBox(height: 80),
            Text(
              'what should',
              style: TextStyle(
                color: mainColor,
                fontSize: 30,
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
            Text(
              'we call you',
              style: TextStyle(
                color: mainColor,
                fontSize: 30,
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
            SizedBox(height: 80),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: myColor2,
                    hintText: 'OTP',
                    labelText: '',
                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 105),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: mainColor.withOpacity(0.5)),
                        borderRadius: BorderRadius.all(Radius.circular(10))// Border color when the TextField is not focused
                    ),
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 50,
              width: 330,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Onboarding1()),
                  );
                  // Add your login logic here
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), // Set the border radius here
                  ),
                  primary: mainColor, // Button background color
                ),
                child: Text(
                  'next',
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