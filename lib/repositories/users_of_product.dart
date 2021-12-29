import 'package:bitik_mobile_app/models/product.dart';
import 'package:bitik_mobile_app/models/user_model.dart';
import 'package:bitik_mobile_app/services/users_of_product_db_base.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class UsersOfProductRepository implements UsersOfProductDBBase {
  final FirebaseAuth auth = FirebaseAuth.instance;

 

  @override
  Future<void> Delete() {
    // TODO: implement Delete
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> Get() {
    // TODO: implement Get
    throw UnimplementedError();
  }

  @override
  Future<void> Update() {
    // TODO: implement Update
    throw UnimplementedError();
  }

  @override
  Future<void> PushAndCreateUserOfProduct(String? id) {
    final User user = auth.currentUser!;
    CollectionReference usersOfProduct =
        FirebaseFirestore.instance.collection('usersofproduct');
    debugPrint("${user.uid} kullanıcısı ${id} ürününe başarıyla katıldı.");
    return usersOfProduct.add({"user": user.uid, "product": id});
  }

  @override
  Future<void> Create(UserModel model) {
    // TODO: implement Create
    throw UnimplementedError();
  }
}
