import 'package:bitik_mobile_app/pages/home/page/home_page.dart';
import 'package:bitik_mobile_app/pages/phone_verification_code_page.dart';
import 'package:bitik_mobile_app/pages/sign_in_page.dart';
import 'package:bitik_mobile_app/pages/sign_up_details_page.dart';
import 'package:bitik_mobile_app/pages/sign_up_page.dart';
import 'package:bitik_mobile_app/pages/start_page.dart';
import 'package:bitik_mobile_app/routes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  runApp(MyApp());
}
const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => StartPage(),
        "/signInPage": (context) => SignInPage(),
        "/signUpPage": (context) => SignUpPage(),
        "/signUpDetailsPage": (context) => SignUpDetailsPage(),
        "/phoneVerificaitonCodePage": (context) => PhoneVerificationCodePage(),
        "/homePage": (context) => HomePage(),
      },
      
    );
  }
}