//mg

import 'package:flutter/material.dart';
import '../splash/splash2.dart';
import 'cardescription.dart';

class Audi extends StatefulWidget {
  const Audi({super.key});

  @override
  State<Audi> createState() => _AudiState();
}

class _AudiState extends State<Audi> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'MG',
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
                      carImage: AssetImage('images/mg/mg1.png'),
                      carname: Text("MG ZS"),
                      hp: Text("740hp"),
                      auto: Text("Automatic"),
                      price: Text("7,40,000"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    description(
                      carImage: AssetImage('images/mg/mg2.png'),
                      carname: Text("MG Hector"),
                      hp: Text("740hp"),
                      auto: Text("Automatic"),
                      price: Text("7,40,000"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    description(
                      carImage: AssetImage('images/mg/mg3.png'),
                      carname: Text("MG Gloster"),
                      hp: Text("740hp"),
                      auto: Text("Automatic"),
                      price: Text("7,40,000"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    description(
                      carImage: AssetImage('images/mg/mg3.png'),
                      carname: Text("MG Astor"),
                      hp: Text("740hp"),
                      auto: Text("Automatic"),
                      price: Text("7,40,000"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    description(
                      carImage: AssetImage('images/mg/mg5.png'),
                      carname: Text("MG 5 EV"),
                      hp: Text("740hp"),
                      auto: Text("Automatic"),
                      price: Text("7,40,000"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    description(
                      carImage: AssetImage('images/mg/mg6.png'),
                      carname: Text("MG HS"),
                      hp: Text("740hp"),
                      auto: Text("Automatic"),
                      price: Text("7,40,000"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    description(
                      carImage: AssetImage('images/mg/mg7.png'),
                      carname: Text("MG Marvel R"),
                      hp: Text("740hp"),
                      auto: Text("Automatic"),
                      price: Text("7,40,000"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    description(
                      carImage: AssetImage('images/mg/mg8.png'),
                      carname: Text("MG GT"),
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