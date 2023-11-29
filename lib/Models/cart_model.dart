import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //List of items on sale
  final List _shopItems = [
    // [itemName, itemPrice, imagePath, color]
    ["ፍርፍር", "80", "assets/frfr1.jpg", Colors.green],
    ["ፓስታ", "80", "assets/pasta.jpg", Colors.yellow],
    ["ሽሮ", "80", "assets/shiro.jpg", Colors.brown],
    ["ቲማቲም", "80", "assets/timatim.jpg", Colors.blue],
  ];

  final List _paymentOptions = [
    ["cbe", "assets/cbe.jpg"],
    ["cbe birr", "assets/cbe birr.jpg"],
    ["telebirr", "assets/telebirr.jpg"],
    ["amole", "assets/amole.png"],
    ["awash", "assets/awash.jpg"],
    ["abyssinia", "assets/abyssinia.png"],
    ["dashen", "assets/dashen.jpg"],
    ["M-pessa", "assets/mpessa.png"],
    ["bitcoin", "assets/bitcoin.png"],
  ];

  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  get paymentOptions => _paymentOptions;

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
