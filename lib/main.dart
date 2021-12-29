import 'package:bitik_mobile_app/locator.dart';
import 'package:bitik_mobile_app/pages/home/page/home_page.dart';
import 'package:bitik_mobile_app/pages/phone_verification_code_page.dart';
import 'package:bitik_mobile_app/pages/login/sign_in_page.dart';
import 'package:bitik_mobile_app/pages/signup/sign_up_details_page.dart';
import 'package:bitik_mobile_app/pages/signup/sign_up_page.dart';
import 'package:bitik_mobile_app/pages/start_page.dart';
import 'package:bitik_mobile_app/routes.dart';
import 'package:bitik_mobile_app/view_models/user_view_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) => StartPage(),
          "/signInPage": (context) => SignInPage(),
          "/signUpPage": (context) => SignUpPage(),
          "/signUpDetailsPage": (context) => SignUpDetailsPage(),
          "/phoneVerificaitonCodePage": (context) => PhoneVerificationCodePage(),
          "/homePage": (context) => HomePage(),
        },
      ),
    );
  }
}
