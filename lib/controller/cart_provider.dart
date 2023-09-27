import 'package:flutter/material.dart';
import 'package:uts_flutter/model/model.dart';

class CartProvider extends ChangeNotifier {
  List<Products> _cartItems = [];

  List<Products> get cartItems => _cartItems;

  void addToCart(Products product) {
    _cartItems.add(product);
    notifyListeners();
  }
}
