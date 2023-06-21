import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_e_commerece_app_c8/ui/register/register_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splash';
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacementNamed(RegisterScreen.routeName);
    });
    return Scaffold(
      body: Image.asset('assets/images/splash_screen.png',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
