import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/order_success_screen.dart';
import 'package:flutter_application_1/screens/payment_method_screen.dart';
import 'package:flutter_application_1/screens/shipping_address.dart';
import 'package:flutter_application_1/widgets/container_button_model.dart';

class OrderConfirmScreen extends StatefulWidget {
  const OrderConfirmScreen({super.key});

  @override
  State<OrderConfirmScreen> createState() => _OrderConfirmScreenState();
}

class _OrderConfirmScreenState extends State<OrderConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Confirm Order "),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(child: Padding(padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const Text("Shipping Address ",style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),),
          const SizedBox(height: 15,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration:  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 4,
                  spreadRadius: 2,
                )
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  const Text("Dear Pro", style: TextStyle(fontSize: 16),),
                
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const ShippingAddress()));
                  }, 
                  child: const Text("Change ", style: TextStyle(color: Color(0xffdb3032), fontSize: 16),))
                ],),
                const Text("Street 6, Canal Town", style: TextStyle(fontSize: 16),),
                const Text("Nasar bagh Road , Board Bazar", style: TextStyle(fontSize: 16),),
                
              ],
            ),
          ),
          const SizedBox(height: 20,),
           Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  const Text("Payment Method", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700)
                  ),
                
                  TextButton(onPressed: (
                  ){
             Navigator.push(context, MaterialPageRoute(builder: (context)=> const PaymentMethodScreen()));
                  }, 
                  child: const Text("Change ", style: TextStyle(color: Color(0xffdb3032), fontSize: 16),))
                ],),
                const SizedBox(height: 20,),
                 Row(
                   children: [
                     Container(
                               padding: const EdgeInsets.symmetric(horizontal: 15),
                               height: 50,
                               
                               width: 80,
                               decoration:  BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(10),
                                 boxShadow: const [
                                   BoxShadow(
                      color: Colors.black,
                      blurRadius: 1,
                      spreadRadius: 1,
                                   )
                                 ]
                               ),
                               child: Image.asset("assets/mastercard.png",
                               fit: BoxFit.cover,
                               ),
                               ),
                                const SizedBox(width: 20,),
                 const Text(" **** **** **** 0477 ", style: TextStyle( fontSize: 16),)
                   ],
                 ),
                  const SizedBox(height: 20,),
                  const Text("Delivery Method", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700)),
                   const SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                                   padding: const EdgeInsets.symmetric(horizontal: 15),
                                   height: 60,
                                   
                                   width: 100,
                                   decoration:  BoxDecoration(
                                     color: Colors.white,
                                     borderRadius: BorderRadius.circular(10),
                                     boxShadow: const [
                                       BoxShadow(
                          color: Colors.black,
                          blurRadius: 1,
                          spreadRadius: 1,
                                       )
                                     ]
                                   ),
                                   child: Image.asset("assets/icon3.png",
                        
                                   
                                   ),
                                   
                                   ),
                                    const SizedBox(width: 20,),
                                    Container(
                                   padding: const EdgeInsets.symmetric(horizontal: 15),
                                   height: 60,
                                   
                                   width: 100,
                                   decoration:  BoxDecoration(
                                     color: Colors.white,
                                     borderRadius: BorderRadius.circular(10),
                                     boxShadow: const [
                                       BoxShadow(
                          color: Colors.black,
                          blurRadius: 1,
                          spreadRadius: 1,
                                       )
                                     ]
                                   ),
                                   child: const Text("Home Delivery ", style: TextStyle(color: Colors.indigo),)
                                   ),
                      ],
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
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> const OrderSuccessScreen()));
              },
              child: ContainerButtonModel(
                itext: "Confirm Order",
                bgcolor: const Color(0xffdb3032),
                containerwidth: MediaQuery.of(context).size.width,
              ),
            )
        
                
        
        
        ],),)),
      ),
    );
  }
}