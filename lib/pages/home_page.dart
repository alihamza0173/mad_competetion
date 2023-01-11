import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mad_competetion/utilites/categories_list_tile.dart';
import 'package:mad_competetion/utilites/grid_card_item.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text(
          "Superior Clothing",
          style: GoogleFonts.dancingScript(
            color: Colors.black,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              padding: const EdgeInsets.only(right: 20.0),
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
                size: 28.0,
              ))
        ],
      ),
      //body

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              //text
              Text(
                "Categories",
                style: GoogleFonts.nerkoOne(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),

              const SizedBox(
                height: 20.0,
              ),
              //categeries
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CategoriesListTile(
                    name: "Men",
                  ),
                  CategoriesListTile(
                    name: "Women",
                  ),
                  CategoriesListTile(
                    name: "Kids",
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              //text
              Text(
                "Categories",
                style: GoogleFonts.nerkoOne(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ]),
          ),
          //gridView
          Expanded(
            child: Center(
              child: Container(
                clipBehavior: Clip.none,
                width: 350.0,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0))),
                child: GridView.builder(
                    itemCount: 10,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            // mainAxisSpacing: 20.0,
                            crossAxisSpacing: 5.0,
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return GridCardItem(
                        name: "name",
                        favroite: true,
                      );
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
