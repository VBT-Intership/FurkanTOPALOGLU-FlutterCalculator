import 'package:calculator_app/home_page.dart';
import 'package:calculator_app/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: SplashWidget(),
      routes: <String, WidgetBuilder>{
        '/HomePage':(BuildContext context)=>HomePage()
      },
    );
  }
}
