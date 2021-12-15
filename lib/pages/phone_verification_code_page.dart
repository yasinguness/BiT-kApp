import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class PhoneVerificationCodePage extends StatelessWidget {
  const PhoneVerificationCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
        child: SingleChildScrollView(
          child: Container(
            width: size.width,
            height: size.height,
            padding: EdgeInsets.fromLTRB(20, 20, 20.0, 20.0),
            decoration: new BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Text('Doğrulama Kodu',
                    style: TextStyle(
                      fontFamily: 'Imprint MT Shadow',
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      //fontStyle: FontStyle.normal,
                    )),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Text("Telefonunuza sms olarak gelen doğrulama",
                    style: TextStyle(
                      fontFamily: 'Imprint MT Shadow',
                      color: Colors.black54,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      //fontStyle: FontStyle.normal,
                    )),
                Text("kodunu aşağıya eksiksiz giriniz.",
                    style: TextStyle(
                      fontFamily: 'Imprint MT Shadow',
                      color: Colors.black54,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      //fontStyle: FontStyle.normal,
                    )),
                SizedBox(
                  height: size.height * 0.01,
                ),
                TweenAnimationBuilder(
                  duration: Duration(seconds: 30),
                  tween: Tween(begin: 30.0, end: 0),
                  builder:
                      (BuildContext context, dynamic value, Widget? child) =>
                          Text(
                    "00:${value.toInt()}",
                    style: TextStyle(color: Colors.pink),
                  ),
                  onEnd: () {},
                ),
                SizedBox(
                  height: size.height * 0.08,
                ),
                OtpForm(),
                SizedBox(height: size.height*0.39,),
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
                      onPressed: () {
                        Navigator.pushNamed(context, "/homePage");
                      },
                      child: Text(
                        'Doğrula',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    
                  ),
                //kodu tekrar gönder butonu
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OtpForm extends StatefulWidget {
  OtpForm({Key? key}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      child: Row(
        children: [
          SizedBox(
            width: size.width * 0.9,
            child: OtpTextField(
              numberOfFields: 4,
              borderColor: Color(0xFF6F35A5),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    });
              }, // end onSubmit
            ),
          )
        ],
      ),
    );
  }
}
