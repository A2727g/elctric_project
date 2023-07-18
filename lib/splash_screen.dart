import 'dart:async';
import 'dart:math';
import 'package:elctric_project/login%20screen.dart';
import 'package:flutter/material.dart';
// import 'package:svr_aqueous_solution/start_screen_page.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key, required String title}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
 super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                Loginscreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/image/electric.png", alignment: Alignment.center, height: 300,),

      ),
    );
  }
}
