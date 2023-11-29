import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/Models/cart_model.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Consumer<CartModel>(
        builder: (context, value, child) {
          return Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Logo
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(value.paymentOptions[1][1]),
                ),

                const SizedBox(
                  height: 30,
                ),

                // Phone number Textfield
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter Your Phone Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),

                // PIN Textfield
                TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                      hintText: 'Enter Your PIN',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),

                // Padding(
                //   padding: const EdgeInsets.all(12.0),
                //   child: Container(
                //     padding: const EdgeInsets.all(12),
                //     decoration: BoxDecoration(
                //       color: Colors.green[300],
                //       borderRadius: BorderRadius.circular(12),
                //     ),
                //     child: Text(
                //       'Total Price',
                //       style: TextStyle(
                //           color: Colors.green[100],
                //           fontWeight: FontWeight.w700),
                //     ),
                //   ),
                // ),
                // const SizedBox(
                //   height: 5,
                // ),
                // Text(
                //   '${value.calculateTotal()} Br',
                //   style: const TextStyle(
                //       color: Colors.white,
                //       fontSize: 20,
                //       fontWeight: FontWeight.bold),
                // ),

                // const SizedBox(
                //   height: 10,
                // ),

                //${*847*1*1*0982394038*{value.calculateTotal()}*{_controller.text}*1#}
                // Pay button
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextButton(
                    onPressed: () async {
                      FlutterPhoneDirectCaller.callNumber(
                          '*847*1*1*0982394038*5*5521*1#');
                    },
                    child: const Text(
                      'Pay',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
