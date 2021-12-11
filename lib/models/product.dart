import 'package:bitik_mobile_app/models/entity.dart';
import 'package:flutter/material.dart';

class Product {
  final dynamic title, description;
  final dynamic images;
  final dynamic colors;
  final dynamic rating;
  final dynamic price;
  dynamic isSoon, isPopular;

  Product({
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isSoon = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return {
      "title": title,
      "description": description,
      "images": images,
      "colors": colors,
      "rating": rating,
      "isSoon": isSoon,
      "isPopular": isPopular
    };
  }

  Product.fromMap(Map<String, dynamic> map)
      : colors = List<String>.from(map['colors']),
        images = List<String>.from(map['images']),
        rating = map["rating"],
        title = map["title"],
        description = map["description"],
        isSoon = map["isSoon"],
        price = map["price"],
        isPopular = map["isPopular"];
}

// Our demo Products

// List<Product> demoProducts = [
//   Product(
//     id: 1,
//     images: [
//       "lib/assets/images/iphone-13-pro-max.png",
//     ],
//     colors: [
//       Color(0xFFF6625E),
//     ],
//     title: "Apple iPhone 13 Pro Max",
//     price: 13000,
//     description: description,
//     rating: 4.8,
//     isFavourite: true,
//     isPopular: true,
//   ),
//   Product(
//     id: 1,
//     images: ["lib/assets/images/iphone-13-pro-max.png"],
//     colors: [
//       Color(0xFFF6625E),
//     ],
//     title: "Apple iPhone 13 Pro Max",
//     price: 13000,
//     description: description,
//     rating: 4.8,
//     isFavourite: true,
//     isPopular: true,
//   ),
//   Product(
//     id: 2,
//     images: ["lib/assets/images/iphone-13-pro-max.png"],
//     colors: [
//       Color(0xFFF6625E),
//     ],
//     title: "Apple iPhone 13 Pro Max",
//     price: 13000,
//     description: description,
//     rating: 4.8,
//     isFavourite: true,
//     isPopular: true,
//   ),
//   Product(
//     id: 3,
//     images: ["lib/assets/images/iphone-13-pro-max.png"],
//     colors: [
//       Color(0xFFF6625E),
//     ],
//     title: "Apple iPhone 13 Pro Max",
//     price: 13000,
//     description: description,
//     rating: 4.8,
//     isFavourite: true,
//     isPopular: true,
//   ),
//   Product(
//     id: 4,
//     images: ["lib/assets/images/iphone-13-pro-max.png"],
//     colors: [
//       Color(0xFFF6625E),
//     ],
//     title: "Apple iPhone 13 Pro Max",
//     price: 13000,
//     description: description,
//     rating: 4.8,
//     isFavourite: true,
//     isPopular: true,
//   ),
// ];

// const String description =
//     "Son model Apple iPhone 13 Pro Max ile yeni teknolojinin farkına varın...";
