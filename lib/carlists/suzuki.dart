//suzuki

import 'package:car_book/splash/splash2.dart';
import 'package:car_book/splash/splash3.dart';
import 'package:flutter/material.dart';

import '../cardescription.dart';
import 'cardescription.dart';

class suzuki extends StatefulWidget {
  const suzuki({super.key});

  @override
  State<suzuki> createState() => _suzukiState();
}

class _suzukiState extends State<suzuki> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Suzuki',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xFF003CFF),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
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
                      carImage: AssetImage('images/suzuki/su1.png'),
                      carname: Text("Suzuki \n Every"),
                      hp: Text("740hp"),
                      auto: Text("Automatic"),
                      price: Text("7,40,000"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    description(
                      carImage: AssetImage('images/suzuki/su2.png'),
                      carname: Text("Suzuki \n Mehran"),
                      hp: Text("740hp"),
                      auto: Text("Automatic"),
                      price: Text("7,40,000"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    description(
                      carImage: AssetImage('images/suzuki/su3.png'),
                      carname: Text("Suzuki\n Liana"),
                      hp: Text("740hp"),
                      auto: Text("Automatic"),
                      price: Text("7,40,000"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    description(
                      carImage: AssetImage('images/suzuki/su4.png'),
                      carname: Text("Suzuki \n Alto"),
                      hp: Text("740hp"),
                      auto: Text("Automatic"),
                      price: Text("7,40,000"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    description(
                      carImage: AssetImage('images/suzuki/su5.png'),
                      carname: Text("Suzuki \nJimmy"),
                      hp: Text("740hp"),
                      auto: Text("Automatic"),
                      price: Text("7,40,000"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    description(
                      carImage: AssetImage('images/suzuki/su6.png'),
                      carname: Text("Suzuki \n Cultus"),
                      hp: Text("740hp"),
                      auto: Text("Automatic"),
                      price: Text("7,40,000"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    description(
                      carImage: AssetImage('images/suzuki/su7.png'),
                      carname: Text("Suzuki \n Swift"),
                      hp: Text("740hp"),
                      auto: Text("Automatic"),
                      price: Text("7,40,000"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    description(
                      carImage: AssetImage('images/suzuki/su8.png'),
                      carname: Text("Suzuki \nWagor R"),
                      hp: Text("740hp"),
                      auto: Text("Automatic"),
                      price: Text("7,40,000"),
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
