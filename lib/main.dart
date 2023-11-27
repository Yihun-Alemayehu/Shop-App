import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/Models/cart_model.dart';
import 'package:shop_app/pages/intro_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    ),
  );
}
