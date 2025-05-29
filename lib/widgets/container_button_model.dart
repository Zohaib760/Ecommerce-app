import 'package:flutter/material.dart';

class ContainerButtonModel extends StatelessWidget {
  // const ContainerButtonModel({super.key});

  final Color? bgcolor;
  final double? containerwidth;
  final String ? itext;

  const ContainerButtonModel({super.key, this.bgcolor,  this.itext, this.containerwidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: containerwidth,
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgcolor,
      ),
      child: Center(
        child: Text(itext!,
        style: const TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),),
      ),
    );
  }
}