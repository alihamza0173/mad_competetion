import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesListTile extends StatelessWidget {
  final String name;
  const CategoriesListTile({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 25.0,
          width: 110,
          decoration: BoxDecoration(
              color: Colors.orange, borderRadius: BorderRadius.circular(20.0)),
        ),
        const Positioned(
          bottom: 0,
          child: Image(width: 45.0, image: AssetImage('kids.png')),
        ),
        Positioned(
          right: 15,
          bottom: 3,
          child: Text(
            name,
            style: GoogleFonts.nerkoOne(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
        ),
      ],
    );
  }
}
