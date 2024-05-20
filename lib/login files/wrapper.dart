import 'package:car_book/splash/splash4.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class wrapper extends StatefulWidget {
  const wrapper({super.key});

  @override
  State<wrapper> createState() => _wrapperState();
}

class _wrapperState extends State<wrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance
              .authStateChanges(), //It listens to changes in the authentication state
          builder: (context, snapshot) {
            // gets called whenever new data arrives on the stream
            if (snapshot.hasData) {
              return splash4();
            } else {
              return Login();
            }
          }),
    );
  }
}
