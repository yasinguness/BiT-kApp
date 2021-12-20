import 'package:bitik_mobile_app/models/user_model.dart';
import 'package:bitik_mobile_app/pages/phone_verification_code_page.dart';
import 'package:bitik_mobile_app/pages/signup/sign_up_page.dart';
import 'package:bitik_mobile_app/view_models/user_view_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPage();
}


class _SignInPage extends State<SignInPage> {
 static final _formkey= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
     String? _email, _password;
 
    void _logInGoogle(BuildContext context) async {
      final _userModel = Provider.of<UserViewModel>(context, listen: false);
      await _userModel.signInGoogle().then((uid) => {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => PhoneVerificationCodePage())),
          });

      // if(_logInGoogle(context)==true){
      //   return await Navigator.of(context).push(MaterialPageRoute( fullscreenDialog: true,builder: (context)=>HomePage()));
      // }
      // else{
      //   return false;
      // }
    }

    void _login(BuildContext context) async {
      _formkey.currentState!.save();
      final _usermodel = Provider.of<UserViewModel>(context, listen: false);

      UserModel? _user =
          await _usermodel.signInEmailAndPassword(_email!, _password!);
      print('Oturum açan user id:' + _user!.UserID.toString());
      //await Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
    }

    Size size = MediaQuery.of(context)
        .size; //hangi telefona açılırsa onun boyutlarına göre belirler
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),
        /* title: Text(
          "Giriş Yap",
          style: TextStyle(color: Color(0xff8b8b8b), fontSize: 18),
        ), */
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formkey,
          child: Container(
            constraints: BoxConstraints.expand(),
            width: size.width,
            height: size.height,
            child: SingleChildScrollView(
              child: Container(
                  width: size.width,
                  height: size.height,
                  padding: EdgeInsets.fromLTRB(20, 20, 20.0, 20.0),
                  decoration: new BoxDecoration(color: Colors.white),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Hoş Geldiniz',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            //fontFamily: 'Imprint MT Shadow',
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            //fontStyle: FontStyle.normal,
                          )),
                      
                      SizedBox(
                        height: size.height * 0.1,
                      ),
        
                      Column(
                        children: [TextFormField(
                          
                          validator: (value) {
                            if (value!.isEmpty) {
                              print("Lütfen e-mail adresinizi giriniz!");
                            }
                            return null;
                          },
                          onSaved: (String? email) {
                            _email = email;
                          },
                          decoration: InputDecoration(
                            hintText: "E-mail adresinizi girin",
                            labelText: "E-mail",
                            labelStyle:
                                TextStyle(color: Colors.black54, fontSize: 18),
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
                        ),],
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      TextFormField(
                        
                        validator: (value) {
                          if (value!.isEmpty) {
                            print("Lütfen şifrenizi giriniz!");
                          }
                          return null;
                        },
                        onSaved: (String? sifre) {
                          _password = sifre;
                        },
                        decoration: InputDecoration(
                          hintText: "Şifrenizi girin",
                          labelText: "Şifre",
                          labelStyle:
                              TextStyle(color: Colors.black54, fontSize: 18),
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
                      /*  Row(
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
                            "Beni Hatırla",
                            style: TextStyle(color: Color(0xff858597)),
                          ),
                        ],
                      ), */
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Şifremi Unuttum',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xffb8b8d2),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.01,
                          )
                        ],
                      ),
                      Container(
                        height: size.height * 0.08,
                        width: size.width * 0.9,
                        margin: EdgeInsets.fromLTRB(0, size.height * 0.01, 0, 0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28.0),
                            )),
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFF6F35A5)),
                          ),
                          onPressed: () { _login(context); },
                          child: Text(
                            'Giriş Yap',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.16),
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                  text: 'Hesabınız yok mu ?',
                                  style: TextStyle(
                                      color: Colors.black26, fontSize: 15),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: ' Üye ol',
                                        style: TextStyle(
                                            color: Colors.blueAccent, fontSize: 15),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SignUpPage()));
                                          })
                                  ]),
                            ),
                          )),
                      SizedBox(height: 7.0),
                      Text(
                        '----- Veya giriş yapın -----',
                        style: TextStyle(color: Colors.black26, fontSize: 15),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: _misafirgirisi,
                                    icon: Image.asset('lib/assets/icons/icons8-facebook-30.png'),
                                  iconSize: 50,)
                              ],
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: Image.asset('lib/assets/icons/icons8-google-30.png'),
                                  iconSize: 50,
                                  onPressed: () {
                                    _logInGoogle(context);
                                   //Navigator.pushNamed(context, "/signUpDetailsPage");
                                  },
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }

  void _misafirgirisi() async {
    UserCredential result =await FirebaseAuth.instance.signInAnonymously();
    print("oturum açan user id:" +result.user!.uid.toString());
  }
}
