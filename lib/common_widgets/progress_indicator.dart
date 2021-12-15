import 'package:flutter/material.dart';

class ProgressIndic extends StatelessWidget {
  const ProgressIndic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
