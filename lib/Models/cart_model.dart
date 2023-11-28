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

  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  // add to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate the total
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; ++i) {
      totalPrice += int.parse(_cartItems[i][1]);
    }
    //notifyListeners();
    return totalPrice.toStringAsFixed(2);
  }
}
