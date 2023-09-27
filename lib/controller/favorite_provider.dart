import 'package:flutter/material.dart';
import 'package:uts_flutter/model/model.dart';

class FavoriteProvider extends ChangeNotifier {
  List<Products> _favoriteItems = [];

  List<Products> get favoriteItems => _favoriteItems;

  void addToFavorite(Products product) {
    _favoriteItems.add(product);
    notifyListeners();
  }
}
