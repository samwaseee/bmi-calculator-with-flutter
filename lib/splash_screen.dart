import 'dart:async';

import 'package:bmi_calculator/home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startTimer() async {
    Timer(const Duration(seconds: 5),(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://cdn-icons-png.flaticon.com/512/10481/10481308.png",
                width: 200, // Adjust width
                height: 200, // Adjust height
                fit: BoxFit.cover, // Fit the image within the specified bounds
              ),

              const SizedBox(height: 20,),

              const CircularProgressIndicator(
                color: Colors.greenAccent,
              )
            ],
          ),
        )
    );
  }
}
