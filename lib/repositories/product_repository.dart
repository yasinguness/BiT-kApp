import 'package:bitik_mobile_app/models/entity.dart';
import 'package:bitik_mobile_app/models/product.dart';
import 'package:bitik_mobile_app/repositories/base_repository.dart';
import 'package:bitik_mobile_app/services/product_db_base.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductRepository implements ProductDBBase, BaseRepository {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  // var productModel = Product("iphone 11", 14000);
  @override
  Future<void> Create() async {
    CollectionReference product =
        FirebaseFirestore.instance.collection('products');
    product
        .add({
          // "productName": productModel.productName,
          // "price": productModel.price
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  @override
  Future<void> Delete() async {
    // TODO: implement Delete
    throw UnimplementedError();
  }

  @override
  Future<void> Get() async {
    // TODO: implement Get
    throw UnimplementedError();
  }

  @override
  Future<void> Update() async {
    // TODO: implement Update
    throw UnimplementedError();
  }
}
