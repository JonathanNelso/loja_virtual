import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:loja_virtual/models/product.dart';

class ProductManager extends ChangeNotifier{

  ProductManager() {
    _loadAllProducts();
  }

  final Firestore firestore = Firestore.instance;

  List<Produtc> allProducts = [];

  Future<void> _loadAllProducts() async {
    final QuerySnapshot snapProducts =
      await firestore.collection('products').getDocuments();

    allProducts = snapProducts.documents.map(
      (d) => Produtc.fromDocument(d)).toList();    

    notifyListeners();
  }

}