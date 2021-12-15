import 'package:bitik_mobile_app/pages/sign_in_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpDetailsPage extends StatefulWidget {
  const SignUpDetailsPage({Key? key}) : super(key: key);

  @override
  State<SignUpDetailsPage> createState() => _SignUpDetailsPage();
}

class _SignUpDetailsPage extends State<SignUpDetailsPage> {
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),
       
      ),
      body: Container(
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
               new Text("Profilinizi Tamamlayın",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                  )),
              
              SizedBox(
                height: size.height*0.05,
              ),
              TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        print("Lütfen adınızı giriniz!");
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Adınızı girin",
                      hintStyle: TextStyle(fontSize: 16),
                      labelText: "Ad",
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
              SizedBox(
                height: size.height*0.05,
              ),
             TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        print("Lütfen soyadınızı giriniz!");
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Soyadınızı girin",
                      hintStyle: TextStyle(fontSize: 16),
                      labelText: "Soyad",
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
               SizedBox(
                height: size.height*0.05,
              ),
             TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        print("Lütfen telefon numaranızı giriniz!");
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Telefon numaranızı girin",
                      hintStyle: TextStyle(fontSize: 16),
                      labelText: "Telefon Numarası",
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
               SizedBox(
                height: size.height*0.05,
              ),
              TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        print("Lütfen adresinizi giriniz!");
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Adresinizi girin",
                      hintStyle: TextStyle(fontSize: 16),
                      labelText: "Adres",
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
              SizedBox(height: size.height*0.09,),
              /* Container(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Zaten hesabınız var mı?',
                      style: TextStyle(color: Colors.black38, fontSize: 13),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Giriş Yap',
                          style:
                              TextStyle(color: Colors.pink.shade200, fontSize: 13),
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
              ), */
              
              Container(
                    height: size.height*0.08,
                    width: size.width*0.9,
                    //margin: EdgeInsets.fromLTRB(0, size.height*0.1, 0, 0), 
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
                      onPressed: () {
                        Navigator.pushNamed(context, "/phoneVerificaitonCodePage");
                      },
                      child: Text(
                        'Üye Ol',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
            ],
          ),
        )),
      ),
    );
  }
}

