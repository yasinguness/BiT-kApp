import 'package:bitik_mobile_app/models/entity.dart';
import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating;
  final int price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "lib/assets/images/iphone-13-pro-max.png",
    ],
    colors: [
      Color(0xFFF6625E),
    ],
    title: "Apple iPhone 13 Pro Max",
    price: 13000,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 1,
    images: ["lib/assets/images/iphone-13-pro-max.png"],
    colors: [
      Color(0xFFF6625E),
    ],
    title: "Apple iPhone 13 Pro Max",
    price: 13000,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: ["lib/assets/images/iphone-13-pro-max.png"],
    colors: [
      Color(0xFFF6625E),
    ],
    title: "Apple iPhone 13 Pro Max",
    price: 13000,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: ["lib/assets/images/iphone-13-pro-max.png"],
    colors: [
      Color(0xFFF6625E),
    ],
    title: "Apple iPhone 13 Pro Max",
    price: 13000,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: ["lib/assets/images/iphone-13-pro-max.png"],
    colors: [
      Color(0xFFF6625E),
    ],
    title: "Apple iPhone 13 Pro Max",
    price: 13000,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
];

const String description =
    "Son model Apple iPhone 13 Pro Max ile yeni teknolojinin farkına varın...";
