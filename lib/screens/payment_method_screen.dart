// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/container_button_model.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  int _type = 1;

  void _handleRadio(Object? e) => setState(() {
        _type = e as int;
      });

  @override
  void initState() {
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
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 20),
              width: size.width,
              height: 55,
              decoration: BoxDecoration(
                border: _type == 1
                    ? Border.all(width: 1, color: const Color(0xffdb3022))
                    : Border.all(width: 0.3, color: Colors.white),
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 1,
                            groupValue: _type,
                            onChanged: _handleRadio,
                            activeColor: const Color(0xffdb3022),
                          ),
                          Text("Amzon Pay",
                              style: _type == 1
                                  ? const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black)
                                  : const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey)),
                        ],
                      ),
                      Container(
                          height: 70,
                          width: 70,
                          child: Image.asset(
                            "assets/amazonpay.png",
                            fit: BoxFit.cover,
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20, top: 20),
              width: size.width,
              height: 55,
              decoration: BoxDecoration(
                border: _type == 2
                    ? Border.all(width: 1, color: const Color(0xffdb3032))
                    : Border.all(width: 0.3, color: Colors.white),
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 20.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 2,
                            groupValue: _type,
                            onChanged: _handleRadio,
                            activeColor: const Color(0xffdb3022),
                          ),
                          Text("Visa ",
                              style: _type == 2
                                  ? const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black)
                                  : const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey)),
                        ],
                      ),
                      Container(
                          height: 20,
                          width: 70,
                          child: Image.asset(
                            "assets/visa.png",
                            fit: BoxFit.cover,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          
          Container(
              margin: const EdgeInsets.only(right: 20, top: 20),
              width: size.width,
              height: 55,
              decoration: BoxDecoration(
                border: _type == 3
                    ? Border.all(width: 1, color: const Color(0xffdb3032))
                    : Border.all(width: 0.3, color: Colors.white),
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 20.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 3,
                            groupValue: _type,
                            onChanged: _handleRadio,
                            activeColor: const Color(0xffdb3022),
                          ),
                          Text("Pay Pal ",
                              style: _type == 2
                                  ? const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black)
                                  : const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey)),
                        ],
                      ),
                      Container(
                          height: 50,
                          width: 70,
                          child: Image.asset(
                            "assets/paypa.png",
                            fit: BoxFit.cover,
                          )),

                          
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20, top: 20),
              width: size.width,
              height: 55,
              decoration: BoxDecoration(
                border: _type == 4
                    ? Border.all(width: 1, color: const Color(0xffdb3032))
                    : Border.all(width: 0.3, color: Colors.white),
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 20.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 4,
                            groupValue: _type,
                            onChanged: _handleRadio,
                            activeColor: const Color(0xffdb3022),
                          ),
                          Text("Google Pay ",
                              style: _type == 4
                                  ? const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)
                                  : const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey)),
                        ],
                      ),
                      Container(
                          height: 30,
                          width: 70,
                          child: Image.asset(
                            "assets/gpay.png",
                            fit: BoxFit.cover,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          const SizedBox(height: 60,),
          const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              Text("Sub-Total", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey),),
              Text("\$300.50", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
            ],
          ),
           const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              Text("Shipping Fee", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey),),
              Text("\$15.00", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
            ],
          ),
          const  Divider(height: 30,color: Colors.black,),
          const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              Text("Total", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey),),
              Text("\$315.50", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.redAccent),),
            ],
          ),
          const SizedBox(height: 40,),
          InkWell(
            onTap: (){},
            child: ContainerButtonModel(
              itext: "Confirm payment",
              bgcolor: const Color(0xffdb3032),
              containerwidth: size.width,
            ),
          )
          ],
        ),
      )),
    );
  }
}
