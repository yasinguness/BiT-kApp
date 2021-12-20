import 'package:bitik_mobile_app/models/entity.dart';
import 'package:bitik_mobile_app/models/product.dart';
import 'package:bitik_mobile_app/models/user_model.dart';

abstract class DBBase {
  Future<void> Create(UserModel model);
  Future<List<Product>> Get();
  Future<void> Update();
  Future<void> Delete();
}
