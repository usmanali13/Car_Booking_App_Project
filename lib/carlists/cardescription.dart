import 'package:car_book/carlists/userdata.dart';
import 'package:car_book/splash/splash2.dart';
import 'package:flutter/material.dart';

class detailcar extends StatefulWidget {
  const detailcar({super.key});

  @override
  State<detailcar> createState() => _detailcarState();
}

class _detailcarState extends State<detailcar> {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.width;
    return MaterialApp(
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
                      height: screenheight*0.7,
                      width: screenwidth*1,
                      child: Image(
                        image: AssetImage("images/mg/mg1.png"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 10,),

                    Column(
                      children: [
                        SizedBox(height: 15,),
                        Container(
                          height: 50,
                          width: 100,
                          child: Image(image: AssetImage('images/des/dec1.jpg')),
                        ),
                        SizedBox(height: 10,),
                        Text('335HP'),
                        Text('Horsepower'),
                      ],
                    ),
                    SizedBox(width: 15,),

                    Container(
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 130,
                              child: Image(
                                image: AssetImage('images/des/dec2.jpg'),
                              ),
                            ),
                            Text('369 lb-ft'),
                            Text('Torque'),
                          ],
                        )),
                    SizedBox(width: 6,),

                    Container(
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 130,
                              child: Image(
                                image: AssetImage('images/des/dec3.jpg'),
                              ),
                            ),
                            Text('5.6 sec'),
                            Text('0-60mph'),
                          ],
                        )),

                  ],
                ),
              ),

              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left:18.0),
                  child: Container(
                    width: screenwidth*1,
                    color: Colors.white10,
                    child:  Text(
                      'Details',
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Container(
                child: Text('Audi is car with automatic transmission in corara white\nwith lazer headlight.'),
              ),
              SizedBox(height: 15,),

              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left:18.0),
                  child: Container(
                    width: screenwidth*1,
                    height: screenheight*0.1,
                    child: Text(
                      'Vehicle Details',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:18.0),
                child: Container(
                  height: screenheight*0.4,
                  width: screenwidth*1,
                  child: Column(
                    children: [

                      Row(children: [Container( width: screenwidth*0.5, child: Text('Make'),),Container(width: screenwidth*0.4,child: Text("Audi",style: TextStyle(fontWeight: FontWeight.bold,),),)],),
                      Row(children: [Container(width: screenwidth*0.5, child: Text('Model'),),Container(width: screenwidth*0.4,child: Text("Q& Quattro",style: TextStyle(fontWeight: FontWeight.bold,),),)],),
                      Row(children: [Container(width: screenwidth*0.5, child: Text('Exterior Color'),),Container(width: screenwidth*0.4,child: Text("Carara White",style: TextStyle(fontWeight: FontWeight.bold,),),)],),
                      Row(children: [Container(width: screenwidth*0.5, child: Text('Interior Color'),),Container(width: screenwidth*0.4,child: Text("Other Color",style: TextStyle(fontWeight: FontWeight.bold,),),)],),
                      Row(children: [Container(width: screenwidth*0.5, child: Text('Body'),),Container(width: screenwidth*0.4,child: Text("SUV/OffRoad",style: TextStyle(fontWeight: FontWeight.bold,),),)],),
                      Row(children: [Container(width: screenwidth*0.5, child: Text('Seats'),),Container(width: screenwidth*0.4,child: Text("5",style: TextStyle(fontWeight: FontWeight.bold,),),)],),
                      Row(children: [Container(width: screenwidth*0.5, child: Text('VIN'),),Container(width: screenwidth*0.4,child: Text("WAU45767895434675",style: TextStyle(fontWeight: FontWeight.bold,),),)],),
                    ],
                  ),
                ),
              ),

              // SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left:18.0),
                child: Row(
                  children: [
                    Container(
                      width: screenwidth*0.5,
                      child: Text('Price(Cash) Rs.80360',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),

                    Container(
                      width: screenwidth*0.4,
                      child: ElevatedButton(

                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Person()),
                          );
                          // Handle button press
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue, // Background color
                          onPrimary: Colors.white, // Text color
                          padding: EdgeInsets.symmetric(horizontal: 46, vertical: 10), // Button padding
                        ),
                        child: Text('Buy'),
                      ),
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
}