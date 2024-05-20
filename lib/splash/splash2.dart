import 'package:car_book/splash/splash3.dart';
import 'package:flutter/material.dart';

class splash2 extends StatefulWidget {
  const splash2({super.key});

  @override
  State<splash2> createState() => _splash2State();
}

class _splash2State extends State<splash2> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: screenWidth * 1.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/carsplash2.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 55,
              ),
              Container(
                alignment: Alignment.centerLeft, // Aligns text to the left
                child: Padding(
                  padding: const EdgeInsets.only(left:16.0),
                  child: Text(
                    "Find The best car\nwithout headache",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                alignment: Alignment.centerLeft, // Aligns text to the left
                child: Padding(
                  padding: const EdgeInsets.only(left:16.0),
                  child: Text(
                    "You choose your car online. we inspect\nit and deliver it.",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight*0.55,),
              Container(
                width: screenWidth*0.7,
                height: screenHeight*0.08,
                decoration: BoxDecoration(
                  color: Color(0xFF003CFF),
                  borderRadius: BorderRadius.circular(10.0), // Set border radius here
                ),
                child: TextButton(
                  onPressed: () {
                    // Navigate to the next screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => splash3()),
                    );
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}