import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size;
    return Scaffold(
        body: Container(
            constraints: BoxConstraints.expand(),
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20.0, 20.0),
              decoration: new BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height*0.1,
                  ),
                  Text(
                    "Bİ'TIK",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: size.height*0.03,
                  ),
                  Text("Aradığınız her şey Bİ'TIK uzağınızda!"),
                  SizedBox(
                    height: size.height*0.05,
                  ),
                  Image.asset(
                    "assest/splash_1.png",
                    height: 265,
                    width: 235,
                  ),
                  SizedBox(
                    height: size.height*0.2,
                  ),
                  SizedBox(
                    height: size.height*0.08,
                    width: size.width*0.9,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),)),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF6F35A5)),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "/signInPage");
                        },
                        child: Text(
                          "İleri",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )),
                  )
                ],
              ),
            )));
  }
}
