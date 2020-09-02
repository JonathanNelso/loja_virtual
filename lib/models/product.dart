import 'package:cloud_firestore/cloud_firestore.dart';

class Produtc {

  Produtc.fromDocument(DocumentSnapshot document){
    name = document['name'] as String;
    description = document['description'] as String;
    images = List<String>.from(document.data['images'] as List<dynamic>);
  }

  String name;
  String description;
  List<String> images;

}