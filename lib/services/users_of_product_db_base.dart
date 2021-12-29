import 'package:bitik_mobile_app/services/db_base.dart';
import 'package:flutter/material.dart';

abstract class UsersOfProductDBBase implements DBBase {
  Future<void> PushAndCreateUserOfProduct(String? id);
}
