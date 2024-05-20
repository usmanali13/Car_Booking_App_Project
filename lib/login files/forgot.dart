import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Forgot extends StatefulWidget {
  const Forgot({Key? key}) : super(key: key);

  @override
  State<Forgot> createState() => ForgotState();
}

class ForgotState extends State<Forgot> {
  TextEditingController email = TextEditingController();
  final GlobalKey<ScaffoldMessengerState> _scaffoldKey = GlobalKey<ScaffoldMessengerState>();

  reset() async {
    if (email.text.isEmpty) {
      _showMessage("Please enter your email");
      return;
    }

    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email.text);
      _showMessage("Password reset email sent");
    } on FirebaseAuthException catch (e) {
      _showMessage(e.message ?? "An error occurred");
    } catch (e) {
      _showMessage("An unknown error occurred");
    }
  }

  void _showMessage(String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: email,
              decoration: InputDecoration(hintText: 'Enter email'),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: reset,
              child: Text("Send Link"),
            ),
          ],
        ),
      ),
    );
  }
}
