import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:random_string/random_string.dart';

import '../services/adddata.dart';

class Person extends StatefulWidget {
  const Person({super.key});


  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {

  TextEditingController NameController = new TextEditingController();
  TextEditingController ModelController = new TextEditingController();
  TextEditingController PriceController = new TextEditingController();
  TextEditingController CardController = new TextEditingController();
  TextEditingController PhoneController = new TextEditingController();
  TextEditingController LocationController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Get screen width and height using MediaQuery
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Adjust padding and font sizes based on screen width and height
    final padding = EdgeInsets.symmetric(
      vertical: screenHeight * 0.01,
      horizontal: screenWidth * 0.05,
    );
    final textStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: screenWidth * 0.05,
      color: Colors.black,
    );
    final labelStyle = TextStyle(
      fontSize: screenWidth * 0.04,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Text(
                "User Details",
                style: TextStyle(
                  fontSize: screenWidth * 0.07,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(
            top: screenHeight * 0.01,
            left: screenWidth * 0.05,
            right: screenWidth * 0.05,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Name',
                  style: labelStyle,
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: NameController,
                    style: textStyle,
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Text(
                  'Car Model',
                  style: labelStyle,
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: ModelController,
                    style: textStyle,
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Text(
                  'Price',
                  style: labelStyle,
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: PriceController,
                    style: textStyle,
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Text(
                  'ID card',
                  style: labelStyle,
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: CardController,
                    style: textStyle,
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Text(
                  'Phone Number',
                  style: labelStyle,
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: PhoneController,
                    style: textStyle,
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Text(
                  'Pick-up Location',
                  style: labelStyle,
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: LocationController,
                    style: textStyle,
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),

                SizedBox(
                  height: screenHeight * 0.04,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(
                      vertical: screenHeight * 0.01,
                      horizontal: screenWidth * 0.1,
                    ),
                  ),
                  onPressed: ()async {
                    String Id = randomAlphaNumeric(5);
                    Map<String, dynamic> PersonInfoMap ={
                      "Name": NameController.text,
                      "Model":ModelController.text,
                      "Price":PriceController.text,
                      "Card":CardController.text,
                      "Phone":PhoneController.text,
                      "Location":LocationController.text,
                      "id":Id
                    };
                    await Databasemethods().addpersonrecord(PersonInfoMap, Id);
                    Fluttertoast.showToast(msg: "Car  Buying Successfully!!!");


                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: screenWidth * 0.05,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
