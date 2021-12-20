import 'package:bitik_mobile_app/models/entity.dart';
import 'package:bitik_mobile_app/models/product.dart';
import 'package:bitik_mobile_app/models/user_model.dart';
import 'package:bitik_mobile_app/services/product_db_base.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProductRepository implements ProductDBBase {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  var productModel = Product(
      colors: ["#000000"],
      description: "Realme 7 Pro ile yeni bir yolculuğa çıkın!",
      images: ["lib/assets/images/realme-7-pro.png"],
      price: 3200,
      title: "Realme 7 Pro",
      isPopular: true,
      isSoon: true,
      rating: 2.7);
  @override
  // Future<void> Create() async {
  //   CollectionReference product =
  //       FirebaseFirestore.instance.collection('products');
  //   product
  //       .add({
  //         "colors": productModel.colors,
  //         "title": productModel.title,
  //         "price": productModel.price,
  //         "description": productModel.description,
  //         "images": productModel.images,
  //         "isPopular": productModel.isPopular,
  //         "isSoon": productModel.isSoon,
  //         "rating": productModel.rating
  //       })
  //       .then((value) => debugPrint(
  //           "${productModel.title} ürünü veri tabanına eklendi eklendi."))
  //       .catchError((error) => print("Ürünü eklerken bir hata oluştu: $error"));
  // }

  @override
  Future<void> Delete() async {
    // TODO: implement Delete
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> Get() async {
    CollectionReference products =
        FirebaseFirestore.instance.collection('products');
    QuerySnapshot querySnapshot = await products.get();

    // Get data from docs and convert map to List
    final allData = querySnapshot.docs.map((doc) => doc.data()).toList();
    return allData as List<Product>;
    // List allData = [];
    // CollectionReference products =
    //     FirebaseFirestore.instance.collection('products');
    // // QuerySnapshot querySnapshot = await products.get();

    // // Get data from docs and convert map to List
    // // allData = querySnapshot.docs.map((doc) => doc.data()).toList();
    // await products.get().then((querySnapshot) => {
    //       querySnapshot.docs.forEach((element) {
    //         allData.add(element.data);
    //       })
    //     });
    // return allData as List<Product>;
    // allData.forEach((element) {
    // Product product = Product(
    //     colors: element["colors"] as List<String>,
    //     description: element["description"] as String,
    //     images: element["images"] as List<String>,
    //     price: element["price"] as int,
    //     title: element["title"] as String,
    //     isPopular: element["isPopular"] as bool,
    //     isSoon: element["isSoon"] as bool,
    //     rating: element["rating"] as double);
    //   // String title = element["title"];
    //   // String description = element["descripiton"];
    //   // List<String> images = element["images"];
    //   // List<Color> colors = element["colors"];
    //   // double rating = element["rating"];
    //   // int price = element["price"];
    //   // bool isSoon = element["isSoon"];
    //   // bool isPopular = element["isPopular"];
    //   prodList.add(product);
    // });
    // final allData = querySnapshot.docs.map((doc) => doc.data()).toList();
  }

  @override
  Future<void> Update() async {
    // TODO: implement Update
    throw UnimplementedError();
  }

  @override
  Future<void> Create(UserModel model) {
    // TODO: implement Create
    throw UnimplementedError();
  }
}
