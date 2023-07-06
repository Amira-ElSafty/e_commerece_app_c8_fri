import 'package:flutter/material.dart';
import 'package:flutter_e_commerece_app_c8/styles/app_theme.dart';
import 'package:flutter_e_commerece_app_c8/ui/login/login_screen.dart';
import 'package:flutter_e_commerece_app_c8/ui/register/register_screen.dart';
import 'package:flutter_e_commerece_app_c8/ui/splash/splash_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RegisterScreen.routeName,
      routes: {
        SplashScreen.routeName : (context) => SplashScreen(),
        RegisterScreen.routeName : (context) => RegisterScreen(),
        LoginScreen.routeName : (context) => LoginScreen(),
      },
      theme: MyTheme.lightTheme,
    );
  }
}
