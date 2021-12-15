import 'package:bitik_mobile_app/models/user_model.dart';
import 'package:bitik_mobile_app/services/auth_base.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService implements AuthBase{
  final FirebaseAuth _firebaseAuth= FirebaseAuth.instance;
  TextEditingController _phoneNumber = TextEditingController();
    TextEditingController _otpCode = TextEditingController();

    String? _verificationId;

  @override
  Future<UserModel?> createUser(String email, String password) async{

    UserCredential _result= await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    return _userFromFirebase(_result.user!);
    
  }

  @override
  Future<UserModel> signInFacebook() async {
    // TODO: implement signInFacebook
    throw UnimplementedError();
  }

  @override
  Future<UserModel?> signInGoogle() async {
    GoogleSignIn _googleSignIn= GoogleSignIn();
    GoogleSignInAccount? _googleSignAccount= await _googleSignIn.signIn();
    if(_googleSignAccount!=null){
      GoogleSignInAuthentication _googleSignInAuthentication= await _googleSignAccount.authentication;
      if(_googleSignInAuthentication.idToken!=null && _googleSignInAuthentication.accessToken !=null){
        UserCredential? _result =await _firebaseAuth.signInWithCredential(
          GoogleAuthProvider.credential(
            idToken: _googleSignInAuthentication.idToken,
            accessToken: _googleSignInAuthentication.accessToken
          )
        );
        User? _user=_result.user;
        return _userFromFirebase(_user!);
      }
      else{
        return null;
      }
    }
    else{
      return null;
    }

  }

  UserModel? _userFromFirebase(User user) {
    //User(firebase)'i User(model)'e cast ediyor
    if(user==null){
      return null;
    }
    return UserModel(UserID:user.uid.toString(),email: user.email!);

  }

  @override
  Future<UserModel?> signInEmailAndPassword(String email, String password) async {
    try{
        UserCredential result= await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    return _userFromFirebase(result.user!);
    }
    catch(e){
      debugPrint('Hata Sign İn'+e.toString());
    }
    
  }

  @override
  Future<bool> signOut() async {
    try{
      final _googleSignIn=GoogleSignIn();
      await _googleSignIn.signOut();
      await _firebaseAuth.signOut();
      return true;
    }catch(e){
      print('Sign out hatasi'+e.toString());
      return false;
    }
  }

  @override
  Future<void> phoneSignIn() async {
    await _firebaseAuth.verifyPhoneNumber(phoneNumber: _phoneNumber.text, verificationCompleted: onVerificationCompleted, verificationFailed: onVerificationFailed, codeSent: _onCodeSent, codeAutoRetrievalTimeout: _onCodeTimeout);
  }


  void _onCodeSent(String verificationId, int? forceResendingToken) {
    this._verificationId=verificationId;
    print(forceResendingToken);
    print('Kod gönderildi');
  }

  void _onCodeTimeout(String verificationId) {
    return null;
  }

  void onVerificationCompleted(PhoneAuthCredential phoneAuthCredential) async {
    await _firebaseAuth.signInWithCredential(phoneAuthCredential);

  }

  void onVerificationFailed(FirebaseAuthException error) {
    if (error.code == 'invalid-phone-number') {
      print('Telefon numarası hatalı girildi');
    }
  }
   void signInWithPhoneNumber() async {
      try {
        final AuthCredential credential = PhoneAuthProvider.credential(
          verificationId: _verificationId!,
          smsCode: _otpCode.text,
        );

        final User? user =
            (await _firebaseAuth.signInWithCredential(credential)).user;

        print("Successfully signed in UID: ${user!.uid}");
      } catch (e) {
        print("Failed to sign in: " + e.toString());
      }
    }
  
}