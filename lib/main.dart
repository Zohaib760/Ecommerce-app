
import 'package:flutter_application_1/navigation_screen.dart';

// import 'splash_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shopping Store",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.pink),
      
      home: const NavigationScreen(),
    ) ;
      
    
  }
}
//zohaib khan