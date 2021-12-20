import 'dart:collection';

import 'package:bitik_mobile_app/models/product.dart';
import 'package:bitik_mobile_app/models/user_model.dart';
import 'package:bitik_mobile_app/pages/signup/sign_up_page.dart';
import 'package:bitik_mobile_app/services/user_db_base.dart';
import 'package:bitik_mobile_app/view_models/user_view_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class FirestoreDbService implements UserDbBase{
    final FirebaseFirestore _fireBaseDb= FirebaseFirestore.instance;
    final FirebaseAuth _firebaseAuth= FirebaseAuth.instance;
    
    
    
    
  @override
  Future<void> Create(UserModel model) async {
    CollectionReference _collectionRef=_fireBaseDb.collection("users");
    _collectionRef.add({
      'email':  model.email,
      //'lastName': _userModel.lastName,
      //'email': _userModel.email,
      'password': model.password
    }).then((value) => debugPrint(
      "${model.lastName} kişisi veri tabanına eklendi"
    )).catchError((error) => print("Kişi eklerken bir hata oluştu: $error"));
    
  
  }

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

}