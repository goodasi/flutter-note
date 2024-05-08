import 'package:cloud_firestore/cloud_firestore.dart';

class NoteModel {
  String id;
  String title;
  String body;
  Timestamp creationDate;

  NoteModel(
      {required this.id,
      required this.title,
      required this.body,
      required this.creationDate});

  factory NoteModel.fromDocumentSnapshot(DocumentSnapshot documentSnapshot) {
    return NoteModel(
        id: documentSnapshot["id"],
        title: documentSnapshot['title'],
        body: documentSnapshot["body"],
        creationDate: documentSnapshot["creationDate"]);
  }

  factory NoteModel.fromJson(Map<String, dynamic> json) {
    return NoteModel(
        id: json['id'],
        title: json['title'],
        body: json["body"],
        creationDate: json["creationDate"]);
  }
}
