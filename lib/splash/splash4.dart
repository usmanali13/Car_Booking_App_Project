import 'package:car_book/carlists/audi.dart';
import 'package:car_book/carlists/suzuki.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../carlists/fortuner.dart';
import '../carlists/tesla.dart';

class splash4 extends StatefulWidget {
  const splash4({super.key});

  @override
  State<splash4> createState() => _splash4State();
}

class _splash4State extends State<splash4> {
  signout() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.12),
              Text(
                "Which brand of Car do you prefer?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: screenWidth * 0.08,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Text(
                "Select that you are interested in.",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: screenWidth * 0.04,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: (screenWidth / 2) / (screenHeight / 4),
                  children: <Widget>[
                    _buildCarBrandButton(
                        context, "images/logos/bmw2.png", tesla(), screenWidth),
                    _buildCarBrandButton(
                        context, "images/logos/mg4.png", Audi(), screenWidth),
                    _buildCarBrandButton(context, "images/logos/suzuki3.png",
                        suzuki(), screenWidth),
                    _buildCarBrandButton(context, "images/logos/audi1.png",
                        fortuner(), screenWidth),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => signout(),
          child: Icon(Icons.logout),

        ),
      ),
    );
  }

  Widget _buildCarBrandButton(BuildContext context, String imagePath,
      Widget destination, double screenWidth) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(screenWidth * 0.04),
          primary: Colors.white, // Button background color
          onPrimary: Colors.black, // Button text color
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(imagePath),
              height: screenWidth * 0.25,
              width: screenWidth * 0.25,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
