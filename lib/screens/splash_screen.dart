// ignore: file_names
// ignore: file_names
// ignore: file_names

import 'dart:async';
import 'package:flutter/material.dart';


import 'package:flutter_application_1/screens/onboarding_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
     Timer(
      const Duration(seconds:3),
        () =>Navigator.push(context, MaterialPageRoute(builder:(context)=>OnboardingScreen(),
        )));
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.black12,
          image: DecorationImage(image: AssetImage("assets/image2.jpg"),
          fit: BoxFit.cover,
          opacity: 0.9,
          )
        ),
        child:const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                Icon(Icons.shopping_cart,
                size: 250,
                color: Color(0xffdb3032),
                ),

                Text("DP SHOP",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
                ),
                )
          ],
        ),
    
    )
    );
  }
}