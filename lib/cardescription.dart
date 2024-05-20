import 'package:flutter/material.dart';

class DetailCar extends StatelessWidget {
  final String name;
  final String detail;
  final String company;
  final String model;
  final String color;
  final String body;
  final String seats;
  final String vin;
  final String price;

  const DetailCar({
    Key? key,
    required this.name,
    required this.detail,
    required this.company,
    required this.model,
    required this.color,
    required this.body,
    required this.seats,
    required this.vin,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      color: Colors.blue,
                      height: screenHeight * 0.4,
                      width: screenWidth,
                      child: Image.asset(
                        "images/tesla1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: screenWidth * 0.07,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildDetailColumn(
                      screenWidth, "images/dec1.jpg", "335HP", "Horsepower"),
                  _buildDetailColumn(
                      screenWidth, "images/dec2.jpg", "369 lb-ft", "Torque"),
                  _buildDetailColumn(
                      screenWidth, "images/dec3.jpg", "5.6 sec", "0-60mph"),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Details',
                      style: TextStyle(
                        fontSize: screenWidth * 0.06,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      detail,
                      style: TextStyle(fontSize: screenWidth * 0.045),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Vehicle Details',
                      style: TextStyle(
                        fontSize: screenWidth * 0.06,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    _buildDetailRow(screenWidth, 'Make', company),
                    _buildDetailRow(screenWidth, 'Model', model),
                    _buildDetailRow(screenWidth, 'Exterior Color', color),
                    _buildDetailRow(screenWidth, 'Interior Color', 'Other Color'),
                    _buildDetailRow(screenWidth, 'Body', body),
                    _buildDetailRow(screenWidth, 'Seats', seats),
                    _buildDetailRow(screenWidth, 'VIN', vin),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.05, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Price (Cash) RS. $price',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.045,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Handle button press
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                        padding:
                        EdgeInsets.symmetric(horizontal: 36, vertical: 10),
                      ),
                      child: Text('Buy'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailColumn(
      double screenWidth, String imagePath, String value, String label) {
    return Column(
      children: [
        Image.asset(imagePath,
            height: screenWidth * 0.2, width: screenWidth * 0.2),
        SizedBox(height: 10),
        Text(value,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: screenWidth * 0.045)),
        Text(label, style: TextStyle(fontSize: screenWidth * 0.04)),
      ],
    );
  }

  Widget _buildDetailRow(double screenWidth, String label, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Container(
            width: screenWidth * 0.4,
            child: Text(label, style: TextStyle(fontSize: screenWidth * 0.045)),
          ),
          Container(
            width: screenWidth * 0.5,
            child: Text(value,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: screenWidth * 0.045)),
          ),
        ],
      ),
    );
  }
}
