import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  int _type = 1;

  void handleRadio (Object? e) => setState((){
    _type = e as int;
  });

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment Method"),
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 40,
      ),
     body: const SafeArea(
      
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          

        ],),
      )),
    );
  }
}