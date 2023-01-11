import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridCardItem extends StatelessWidget {
  final String name;
  const GridCardItem({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 170.0,
          width: 170.0,
          decoration: BoxDecoration(
              color: Colors.blue[300], borderRadius: BorderRadius.circular(20.0)),
        ),
        const Positioned(
          top: -30,
          child: Image(width: 130.0, image: AssetImage('denim_jacket.png')),
        ),
        const Positioned(
            right: 10, top: 10, child: Icon(Icons.favorite_border_outlined)),
        Positioned(
          top: 90,
          left: 10,
          right: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Denim Jeans",
                style: GoogleFonts.nerkoOne(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
              Text(
                "15.5",
                style: GoogleFonts.nerkoOne(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 110,
          left: 10,
          right: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Jaket",
                style: GoogleFonts.nerkoOne(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
              Text(
                "5 in Stock",
                style: GoogleFonts.nerkoOne(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 10,
          bottom: 10,
          child: Text(
            "Impoted from japan in 2002",
            style: GoogleFonts.nerkoOne(
              color: Colors.black,
              fontSize: 13.0,
            ),
          ),
        ),
      ],
    );
  }
}
