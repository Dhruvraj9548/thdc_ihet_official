import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thdc_ihet_official/main.dart';

class introSplashScreen extends StatefulWidget{

  @override
  State<introSplashScreen> createState() => _introSplashScreen();
}

class _introSplashScreen extends State<introSplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage(title: 'Dashboard'),));
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
          child: Center(child: Image.asset('assets/images/logo2.png', height: 200, width: 200, )),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xffff758), Color(0xffff7eb3)
            ]
            )
        ),
        ),
    );
  }}