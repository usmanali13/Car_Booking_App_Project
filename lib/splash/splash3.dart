import 'package:car_book/login%20files/wrapper.dart';
import 'package:flutter/material.dart';

import '../login files/signup.dart';

class splash3 extends StatelessWidget {
  const splash3({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF003CFF),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 0.08),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
              child: Row(
                children: [
                  Icon(
                    Icons.car_rental_sharp,
                    size: screenWidth * 0.08,
                    color: Colors.black,
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  Text(
                    "WELL COME",
                    style: TextStyle(
                      fontSize: screenWidth * 0.06,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
              child: Text(
                "Let's get started",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.09,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
              child: Text(
                "Signup or login to see what\nhappening near you",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: screenWidth * 0.040,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Container(
              width: screenWidth,
              height: screenHeight * 0.4,
              child: Image(
                image: AssetImage("images/tesla1.png"),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Center(
              child: Container(
                width: screenWidth * 0.7,
                height: screenHeight * 0.07,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => wrapper()),
                    );
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Color(0xFF003CFF),
                      fontSize: screenWidth * 0.06,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
            Center(
              child: Container(
                width: screenWidth * 0.7,
                height: screenHeight * 0.07,
                decoration: BoxDecoration(
                  color: Color(0xFF003CFF),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.06,
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
