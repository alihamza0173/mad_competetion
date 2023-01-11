import 'package:flutter/material.dart';

class ShoppingCart{
  String name;
  int price;
  String category;
  String image;
  var icon;
  int inStock;
  String des;

  ShoppingCart(this.name, this.price, this.category, this.image, this.icon, this.inStock, this.des);

  static List<ShoppingCart> samples = [
    ShoppingCart(
      "Denis Jeans",
      20,
      "Jacket",
      "assets/denim_jacket.png",
      Icons.favorite_outline_outlined,
      5,
      "Imported from Japan in 2002"
    ),
    ShoppingCart(
      "Adidas Grey",
      15,
      "Sweater",
      "assets/denim_jacket.png",
      Icons.favorite_outline_outlined,
      15,
      "Imported from USA in 2002"
    ),
    ShoppingCart(
      "Adidas Grey",
      15,
      "Sweater",
      "assets/denim_jacket.png",
      Icons.favorite_outline_outlined,
      15,
      "Imported from USA in 2002"
    ),
  ];
}