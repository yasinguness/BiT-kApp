import 'package:bitik_mobile_app/models/entity.dart';
import 'package:bitik_mobile_app/models/product.dart';

abstract class DBBase {
  Future<void> Create();
  Future<List<Product>> Get();
  Future<void> Update();
  Future<void> Delete();
}
