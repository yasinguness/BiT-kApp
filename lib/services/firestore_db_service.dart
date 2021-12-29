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
    CollectionReference users = FirebaseFirestore.instance.collection('Users');

    
    
    
   @override
 
  Future<void> updateUser(String email, String password) async {
    
    users.add({"email": email, "password": password});
    // Map _addedUserMap = model.toMap();
    // _addedUserMap['createdAt'] = FieldValue.serverTimestamp();
    // await _fireBaseDb
    //     .collection("users")
    //     .doc(model.UserID!)
    //     .set({'UserMap': _addedUserMap});
    // DocumentSnapshot _readedUser =
    //     await _fireBaseDb.doc("users/${model.UserID}").get();
    // Map<String, dynamic> _readedUserMap =
    //     _readedUser.data() as Map<String, dynamic>;

    // UserModel _readedUserObject = UserModel.fromMap(_readedUserMap);
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

  @override
  Future<void> Create(UserModel model) {
    // TODO: implement Create
    throw UnimplementedError();
  }

}