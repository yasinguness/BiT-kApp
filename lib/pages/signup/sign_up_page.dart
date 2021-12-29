import 'package:bitik_mobile_app/pages/login/sign_in_page.dart';
import 'package:bitik_mobile_app/services/firestore_db_service.dart';
import 'package:bitik_mobile_app/view_models/user_view_model.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget with ChangeNotifier {
  SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool checkboxValue = false;
  static final _formkey = GlobalKey<FormState>();

  String? _email, _password;

  @override
  Widget build(BuildContext context) {
    // void phoneSignIn(BuildContext context) async {
    //   final _fireauth =
    //       Provider.of<FirebaseAuthService>(context, listen: false);
    //   _fireauth.phoneSignIn();
    // }

    void _signUp(BuildContext context) async {
      _formkey.currentState!.save();
      final _userViewModel = Provider.of<UserViewModel>(context, listen: false);

      await _userViewModel.createUser(_email!, _password!);
      await Navigator.of(context).pushNamed("/homePage");
    }

    Size size = MediaQuery.of(context).size;
    return Form(
      key: _formkey,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          width: size.width,
          height: size.height,
          /* constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
          image: DecorationImage(
                image: AssetImage("assest/signup.png"), fit: BoxFit.cover)), */
          child: SingleChildScrollView(
              child: Container(
            padding: EdgeInsets.fromLTRB(20, 15, 20, 20),
            decoration: new BoxDecoration(color: Colors.white),
            child: Column(
              //mainAxisSize: MainAxisSize.max,
              children: [
                new Text("Üye Ol",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    )),
                SizedBox(
                  height: size.height * 0.09,
                ),
                TextFormField(
                  onSaved: (String? email) {
                    _email = email;
                  },
                  // validator: (value) {
                  //   if (value!.isEmpty) {
                  //     print("Lütfen e-mail adresinizi giriniz!");
                  //   }
                  //   return null;
                  // },

                  decoration: InputDecoration(
                    hintText: "E-mail adresinizi girin",
                    hintStyle: TextStyle(fontSize: 16),
                    labelText: "E-mail",
                    labelStyle: TextStyle(color: Colors.black54, fontSize: 18),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28.0),
                      borderSide: BorderSide(color: Colors.white),
                      gapPadding: 10,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28.0),
                      borderSide: BorderSide(color: Colors.black26),
                      gapPadding: 10,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                TextFormField(
                  onSaved: (String? psw) {
                    _password = psw;
                  },
                  // validator: (value) {
                  //   if (value!.isEmpty) {
                  //     print("Lütfen şifrenizi giriniz!");
                  //   }
                  //   return null;
                  // },

                  decoration: InputDecoration(
                    hintText: "Şifrenizi girin",
                    hintStyle: TextStyle(fontSize: 16),
                    labelText: "Şifre",
                    labelStyle: TextStyle(color: Colors.black54, fontSize: 18),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28.0),
                      borderSide: BorderSide(color: Colors.white),
                      gapPadding: 10,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28.0),
                      borderSide: BorderSide(color: Colors.black26),
                      gapPadding: 10,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Şifrenizi tekrar girin",
                    hintStyle: TextStyle(fontSize: 16),
                    labelText: "Şifre Tekrarı",
                    labelStyle: TextStyle(color: Colors.black54, fontSize: 18),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28.0),
                      borderSide: BorderSide(color: Colors.white),
                      gapPadding: 10,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28.0),
                      borderSide: BorderSide(color: Colors.black26),
                      gapPadding: 10,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                SizedBox(
                  height: size.height * 0.18,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Zaten hesabınız var mı?',
                        style: TextStyle(color: Colors.black38, fontSize: 13),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Giriş Yap',
                            style: TextStyle(color: Colors.blue, fontSize: 13),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignInPage()));
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: size.height * 0.08,
                  width: size.width * 0.9,
                  //margin: EdgeInsets.fromLTRB(0, size.height*0.1, 0, 0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28.0),
                      )),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF6F35A5)),
                    ),
                    onPressed: () async {
                      _signUp(context);
                      //await Navigator.pushNamed(context, "/signUpDetailsPage");
                    },
                    child: Text(
                      'İleri',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
