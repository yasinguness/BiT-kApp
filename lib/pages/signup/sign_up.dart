import 'package:bitik_mobile_app/models/user_model.dart';
import 'package:bitik_mobile_app/pages/login/login.dart';
import 'package:bitik_mobile_app/pages/phone_auth_page.dart';
import 'package:bitik_mobile_app/services/firebase_auth_service.dart';
import 'package:bitik_mobile_app/view_models/user_view_model.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

 final _formkey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    void phoneSignIn(BuildContext context) async{
        final _fireauth = Provider.of<FirebaseAuthService>(context,listen: false);
        _fireauth.phoneSignIn();

  }

  bool checkboxValue = false;
  String? _name,_surname,_email,_password;
  String? _number;

  void _signUp(BuildContext context) async{
    _formkey.currentState!.save();
  final _userViewModel=Provider.of<UserViewModel>(context,listen: false);
  
     await _userViewModel.createUser(_email!, _password!);

  }
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.fromLTRB(20, 60, 20, 20),
          decoration: new BoxDecoration(color: Color(0xff1f1f39)),
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                new Text("Üye Ol",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xffffffff),
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    )),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  children: [
                    Text(
                      'Adınız',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff858597),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  onSaved: (String? name){
                    _name=name;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                  ),
                ),
                SizedBox(
                  height: 13.0,
                ),
                Row(
                  children: [
                    Text(
                      'Soyadınız',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff858597),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  onSaved: (String? lastName){
                    _surname=lastName;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                  ),
                ),
                SizedBox(
                  height: 13.0,
                ),
                Row(
                  children: [
                    Text(
                      'E-mail Adresiniz',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff858597),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 13.0,
                ),
                TextFormField(
                  onSaved: (String? email){
                    _email=email;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Telefon Numarası',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff858597),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 13.0,
                ),
                TextFormField(
                  onSaved: (String? number){
                    _number=number;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                  ),
                ),
                SizedBox(
                  height: 13.0,
                ),
                Row(
                  children: [
                    Text(
                      'Şifreniz',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff858597),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 13.0,
                ),
                TextFormField(
                  onSaved: (String? passwd){
                    _password=passwd;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                  ),
                ),
                SizedBox(
                  height: 13.0,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: checkboxValue,
                      onChanged: (value) {
                        checkboxValue = !checkboxValue;
                        setState(() {});
                        print(checkboxValue);
                      },
                    ),
                    Text(
                      "Koşulları okudum, kabul ediyorum.",
                      style: TextStyle(color: Color(0xff858597)),
                    ),
                  ],
                ),
                Container(
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                                text: 'Zaten bir hesabınız var mı ?',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 15),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: ' Giriş Yap',
                                      style: TextStyle(
                                          color: Colors.blueAccent, fontSize: 15),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      LogIn()));
                                        })
                                ]),
                          ),
                        )),
                
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: ElevatedButton(
                    onPressed: ()async{ 
                       //phoneSignIn(context);
                      _signUp(context);
                      //await Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn(),));
                      
                    }  ,
                    child: Text(
                      'Üye Ol',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }

 
}