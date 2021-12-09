import 'package:bitik_mobile_app/models/entity.dart';

abstract class DBBase {
  Future<void> Create();
  Future<void> Get();
  Future<void> Update();
  Future<void> Delete();
}
