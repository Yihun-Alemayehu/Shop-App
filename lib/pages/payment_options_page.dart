import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/Models/cart_model.dart';
import 'package:shop_app/pages/payment_page.dart';
import 'package:url_launcher/url_launcher.dart';

class PaymentOptionsPage extends StatelessWidget {
  const PaymentOptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
        centerTitle: true,
      ),
      body: Consumer<CartModel>(
        builder: (context, value, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Pay now
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Pay with',
                  style: GoogleFonts.notoSerif(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // Payment Options
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ListView.builder(
                    itemCount: value.paymentOptions.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(12)),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(
                                builder: (context) {
                                  return const PaymentPage();
                                },
                              ));
                            },
                            child: ListTile(
                              contentPadding: const EdgeInsets.all(10),
                              title: Text(
                                value.paymentOptions[index][0],
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              leading: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                      value.paymentOptions[index][1])),
                              trailing:
                                  const Icon(Icons.arrow_forward_ios_outlined),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
