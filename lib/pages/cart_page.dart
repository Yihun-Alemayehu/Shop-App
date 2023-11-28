import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/Models/cart_model.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My cart'),
          centerTitle: true,
        ),
        body: Consumer<CartModel>(
          builder: (context, value, child) {
            return Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ListView.builder(
                      itemCount: value.cartItems.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ListTile(
                              leading: Image.asset(value.cartItems[index][2]),
                              title: Text(value.cartItems[index][0]),
                              subtitle:
                                  Text('${value.cartItems[index][1]} Br '),
                              trailing: IconButton(
                                  onPressed: () {
                                    context
                                        .read<CartModel>()
                                        .removeItemFromCart(index);
                                  },
                                  icon: const Icon(Icons.delete)),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),

                //total price
                Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.green[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            const Text('Total Price'),
                            Text(
                              value.calculateTotal(),
                              style: const TextStyle(color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ));
  }
}
