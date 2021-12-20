import 'package:bitik_mobile_app/locator.dart';
import 'package:bitik_mobile_app/models/user_model.dart';
import 'package:bitik_mobile_app/services/auth_base.dart';
import 'package:bitik_mobile_app/services/firebase_auth_service.dart';
import 'package:bitik_mobile_app/services/firestore_db_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserRepository implements AuthBase{
  final FirebaseAuthService _firebaseAuth= locator<FirebaseAuthService>();
  FirestoreDbService _firestoreDbService=locator<FirestoreDbService>();

  @override
  Future<UserModel> createUser(String email, String password) async {
    UserModel? _user=await _firebaseAuth.createUser(email, password);
    await _firestoreDbService.Create(UserModel());
    return _user!;
  }

  @override
  Future<UserModel> signInFacebook() async {
    UserModel? _user=await _firebaseAuth.signInFacebook();
    return _user;
  }

  @override
  Future<UserModel> signInGoogle() async {
    UserModel? _user=await _firebaseAuth.signInGoogle();
    return _user!;
  }

  @override
  Future<UserModel?> signInEmailAndPassword(String email, String password) async {
    UserModel? _user=await _firebaseAuth.signInEmailAndPassword(email, password);
    return _user;
  }

  @override
  Future<bool> signOut() async {
    return await _firebaseAuth.signOut();
  }

  @override
  Future<bool> phoneSignIn(String number) async{
    if(await _firebaseAuth.phoneSignIn(number)){
      return true;
    }
    else{
      return false;
    }
    
  }

}