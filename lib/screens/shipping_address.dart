import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/order_confirm_screen.dart';
import 'package:flutter_application_1/widgets/container_button_model.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({super.key});

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Shipping Address "),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child:
          Padding(
            padding:const EdgeInsets.all(20),
            child: Column(children: [
              const SizedBox(height: 40,),
              TextFormField(               
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Full Name", 
                ),
              ),
               const SizedBox(height: 20,),
               TextFormField(               
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Mobile Number", 
                ),
              ),
               const SizedBox(height: 20,),
               TextFormField(               
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Address", 
                ),
              ),
              const SizedBox(height: 20,),
               TextFormField(               
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "City", 
                ),
              ),
              const SizedBox(height: 20,),
               TextFormField(               
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "State / Province ", 
                ),
              ),
               const SizedBox(height: 20,),
               TextFormField(               
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Zip Code (Postal Code) ", 
                ),
              ),
               const SizedBox(height: 20,),
               TextFormField(               
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Country ", 
                ),
              ),
              const SizedBox(height: 40,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const OrderConfirmScreen()));
              },
              child: ContainerButtonModel(
                itext: "Confirm payment",
                bgcolor: const Color(0xffdb3032),
                containerwidth: MediaQuery.of(context).size.width,
              ),
            )
            ],),
            )
          ),
      ),

    );
  }
}