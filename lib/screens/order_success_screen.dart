import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/navigation_screen.dart';
import 'package:flutter_application_1/widgets/container_button_model.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image.asset("assets/success.png",
        height: 250,),
        const Text("Success!",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700, wordSpacing: 1),),
        const Text("Your order will be delivered soon",  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, wordSpacing: 1),),
        const Text("Thank YOu! For choosing our app",  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, wordSpacing: 1),),
         const SizedBox(height: 40,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const NavigationScreen()));
              },
              child: ContainerButtonModel(
                itext: "Continue Shopping",
                bgcolor: const Color(0xffdb3032),
                containerwidth: MediaQuery.of(context).size.width,
              ),
            )
      ],),
    ));
  }
}