import 'package:cloud_firestore/cloud_firestore.dart';

class Databasemethods {
  Future addpersonrecord(Map<String, dynamic> personmap, String id) async {
    return await FirebaseFirestore.instance
        .collection("Customers Details")
        .doc(id)
        .set(personmap); //instsance is single row
  }
}
