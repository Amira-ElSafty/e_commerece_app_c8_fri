import 'package:flutter/material.dart';
import 'package:flutter_e_commerece_app_c8/ui/splash/splash_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName : (context) => SplashScreen(),

      },
    );
  }
}
