import 'package:bitik_mobile_app/models/user_model.dart';
import 'package:bitik_mobile_app/pages/home/page/home_page.dart';
import 'package:bitik_mobile_app/pages/phone_auth_page.dart';
import 'package:bitik_mobile_app/pages/signup/sign_up.dart';
import 'package:bitik_mobile_app/size_config.dart';
import 'package:bitik_mobile_app/view_models/user_view_model.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LogIn extends StatefulWidget {
  LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    String? _email, _password;
  final _formkey= GlobalKey<FormState>();
    void _logInGoogle(BuildContext context) async {
      final _userModel = Provider.of<UserViewModel>(context, listen: false);
      await _userModel.signInGoogle().then((uid) => {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => PhoneAuthPage())),
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

    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              height: getProportionateScreenHeight(800),
              padding: EdgeInsets.fromLTRB(20, 60.0, 20.0, 20.0),
              decoration: new BoxDecoration(
                color: Color(0xff1f1f39),
              ),
              child: Form(
                key: _formkey,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
              
                  children: [
                    Text(
                      'Giriş Yap',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xffffffff),
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(
                      height: 32.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'E-mail Adresi',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xff858597),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        )
                      ],
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                      ),
                      onSaved: (String? email) {
                        _email = email;
                      },
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Şifre',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xff858597),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                      ),
                      onSaved: (String? passwd) {
                        _password = passwd;
                      },
                    ),
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
                    Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                      child: ElevatedButton(
                        onPressed: () async {
                          _login(context);
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Container(
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                                text: 'Hesabınız yok mu ?',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 15),
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
                    SizedBox(height: 8.0),
                    Text(
                      'Veya giriş yapın',
                      style: TextStyle(color: Colors.white24, fontSize: 15),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()));
                                  },
                                  icon: Icon(
                                    Icons.facebook,
                                    color: Colors.blue,
                                    size: 30,
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: () async {
                                    _logInGoogle(context);
                                  },
                                  icon: Icon(
                                    Icons.email,
                                    color: Colors.white,
                                    size: 30,
                                  ))
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
