import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridCardItem extends StatefulWidget {
  final String name;
  bool favroite;
  GridCardItem({required this.name, required this.favroite, super.key});

  @override
  State<GridCardItem> createState() => _GridCardItemState();
}

class _GridCardItemState extends State<GridCardItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 180.0,
            width: 180.0,
            decoration: BoxDecoration(
                color: Colors.blue[300], borderRadius: BorderRadius.circular(20.0)),
          ),
          const Positioned(
            top: -30,
            child: Image(width: 130.0, image: AssetImage('denim_jacket.png')),
          ),
          Positioned(
              right: 10, top: 10, child: IconButton(icon: widget.favroite? const Icon(Icons.favorite, color: Colors.red,): const Icon(Icons.favorite_border_outlined), onPressed: () { setState(() {
                widget.favroite = !widget.favroite;
              }); },)),
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
      ),
    );
  }
}
