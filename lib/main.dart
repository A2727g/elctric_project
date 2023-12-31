import 'dart:io';
import 'package:elctric_project/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:elctric_project/electrician form.dart';
void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      // title: 'Bigbuzz',
      debugShowCheckedModeBanner: false,
      // home: IntroDataScreen(),
      // home: QuestionScreenPage(),
      // home: VideoPlayScreen(),
      home:
      SplashScreen(title: '',),
      // ElectForm(),
      // home: TeamRegistrationPage(),
      // home: CardScreenPage(),
    );
  }
}
class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}
