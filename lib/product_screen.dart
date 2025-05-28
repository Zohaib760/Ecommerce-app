import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
 

  List images =[
   "assets/image1.jpg",
   "assets/image2.jpg",
   "assets/image3.jpg",
   "assets/image4.jpg",
   "assets/image5.jpg",
   "assets/image6.jpg",
  ];

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}