import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Logo image
          Padding(
            padding: const EdgeInsets.only(
                left: 80.0, right: 80, bottom: 40, top: 160),
            child: Image.asset('assets/avocado.png'),
          ),

          // delivery motto
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Text('We deliver groceries at your doorstep',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                )),
          ),

          // Fresh items everyday
          const Text('Fresh items everyday'),

          const Spacer(),

          // Get started button
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.deepPurple,
            ),
            child: const Text(
              'Get Started',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),

          const Spacer(),
        ],
      ),
    );
  }
}
