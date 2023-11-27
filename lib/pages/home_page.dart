import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/Components/grocery_item_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 45,
            ),
            // Good morning
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text('Good morning,'),
            ),

            // let's order
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "let's order Fresh items for you",
                style: GoogleFonts.notoSerif(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(
              height: 24,
            ),

            //divider
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Divider(),
            ),

            const SizedBox(
              height: 24,
            ),

            //fresh items
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Fresh items',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),

            // List of items
            Expanded(child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
              itemBuilder: (context, index){
                return const GroceryItemTile();
            }))
          ],
        ),
      ),
    );
  }
}

