import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/pages/home_page.dart';

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
                left: 80.0, right: 80, bottom: 10, top: 80),
            child: Image.asset(
              'assets/delivery3.jpg',
              height: 400,
            ),
          ),

          // delivery motto
          Padding(
            padding: const EdgeInsets.only(right: 24, bottom: 24, left: 24),
            child: Text('We deliver Food at your dorm doorstep',
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSerif(
                  fontSize: 40,
                )),
          ),

          // Fresh items everyday
          const Text('Fresh Food everyday'),

          const Spacer(),

          // Get started button
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HomePage();
                  },
                ),
              );
            },
            child: Container(
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
          ),

          const Spacer(),
        ],
      ),
    );
  }
}
