import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //List of items on sale
  final List _shopItems = [
    // [itemName, itemPrice, imagePath, color]
    ["Avocado", "60", "assets/avocado.png", Colors.green],
    ["Banana", "40", "assets/banana.png", Colors.yellow],
    ["chicken", "120", "assets/chicken.png", Colors.brown],
    ["Water", "12", "assets/water.png", Colors.blue],
  ];

  get shopItems => _shopItems;
}
