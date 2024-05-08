import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class UserModel {
  String id;
  String name;
  String email;

  UserModel({required this.id, required this.name, required this.email});

  factory UserModel.fromDocumentSnapshot(DocumentSnapshot doc) {
    return UserModel(id: doc["id"], name: doc["name"], email: doc["email"]);
  }
}
