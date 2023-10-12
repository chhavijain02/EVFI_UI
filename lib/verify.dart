import 'package:evfi_duplicate/profileImage.dart';
import 'package:flutter/material.dart';
class Verify extends StatelessWidget {
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
              'almost',
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
            Text(
              'there',
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
                    labelText: '**********',
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
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: 330,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileImage()),
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
                  'Verify',
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