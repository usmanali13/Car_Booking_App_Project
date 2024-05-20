//bmw

import 'package:car_book/splash/splash2.dart';
import 'package:flutter/material.dart';

import 'cardescription.dart';


class tesla extends StatefulWidget {
  const tesla({super.key});

  @override
  State<tesla> createState() => _teslaState();
}

class _teslaState extends State<tesla> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'BM',
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
          ),
          backgroundColor: Color(0xFF003CFF),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    description(
                      carImage: AssetImage('images/bmw/bm8.png'),
                      carname: Text("BMW X1"),
                      hp: Text("740hp"),
                      auto: Text("Automatic"),
                      price: Text("7,40,000"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    description(
                      carImage: AssetImage('images/bmw/bm5.png'),
                      carname: Text("BMW X3"),
                      hp: Text("740hp"),
                      auto: Text("Automatic"),
                      price: Text("7,40,000"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    description(
                      carImage: AssetImage('images/bmw/bm3.png'),
                      carname: Text("BMW X7"),
                      hp: Text("740hp"),
                      auto: Text("Automatic"),
                      price: Text("7,40,000"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    description(
                      carImage: AssetImage('images/bmw/bm2.png'),
                      carname: Text("BMW X5"),
                      hp: Text("740hp"),
                      auto: Text("Automatic"),
                      price: Text("7,40,000"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    description(
                      carImage: AssetImage('images/bmw/bm1.png'),
                      carname: Text("BMW M3"),
                      hp: Text("740hp"),
                      auto: Text("Automatic"),
                      price: Text("7,40,000"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    description(
                      carImage: AssetImage('images/bmw/bm6.png'),
                      carname: Text("BMW Z4"),
                      hp: Text("740hp"),
                      auto: Text("Automatic"),
                      price: Text("7,40,000"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    description(
                      carImage: AssetImage('images/bmw/bm7.png'),
                      carname: Text("BMW i10"),
                      hp: Text("740hp"),
                      auto: Text("Automatic"),
                      price: Text("7,40,000"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    description(
                      carImage: AssetImage('images/bmw/bm4.png'),
                      carname: Text("BMW i8"),
                      hp: Text("740hp"),
                      auto: Text("Automatic"),
                      price: Text("7,50,000"),
                    ),
                    SizedBox(
                      height: 20,
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

class description extends StatelessWidget {
  final ImageProvider<Object> carImage;
  description(
      {required this.carImage,
      required this.carname,
      required this.hp,
      required this.auto,
      required this.price});
  Text? carname;
  Text? hp;
  Text? auto;
  Text? price;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => detailcar()),
        );
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.black12),
      ),
      child: Container(
        padding:
            EdgeInsets.symmetric(vertical: 4.0), // Adjust padding as needed
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 140,
                    width: 180,
                    child: Image(
                      image: carImage,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            carname!.data!,
                            // Adding ! after the variable name (carname)
                            // asserts that the variable is not null at runtime.
                            // If carname is null, it will throw an error.
                            //  accesses the data property of the Text widget accesses
                            //  .data! the data property of the Text widget
                            // data property contains the actual text of the Text
                            // widget as a String. Since carname is of type Text?,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0), // Padding on left & right
                    child: Container(
                        child: Text(
                      hp!.data!,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0), // Padding on left & right
                    child: Container(
                        child: Text(
                      auto!.data!,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0), // Padding on left & right
                    child: Container(
                        child: Text(
                      price!.data!,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
