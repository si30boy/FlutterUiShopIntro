import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_4/feature/welcome/WelcomeScreen.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness:Brightness.light
    )
  ); // این تیکه کد برای اون بخش بالای گوشی عه که شارژ گوسی اینارو نشون میده و تنظیمات رنگ اونه




  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shapino',
      theme: ThemeData(useMaterial3: true),
      home: WelcomeScreen(),
    );
  }
}