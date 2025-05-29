import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/cart_screen.dart';
import 'package:flutter_application_1/widgets/container_button_model.dart';

class ProductDetailPopup extends StatelessWidget {
  // const ProductDetailPopup({super.key});

  final isStyle = const TextStyle(
    color:  Colors.black87,
    fontSize: 17,
    fontWeight: FontWeight.w600,
  );

  List <Color> clr=[
    Colors.red,
    Colors.green,
    Colors.indigo,
    Colors.amber,
    Colors.brown,
  ];

   ProductDetailPopup({super.key});

  @override  
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
         showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context, 
        builder: (context) => Container(
          height: MediaQuery.of(context).size.height/2.5,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )
          ),
          child: Padding(padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text("Size: ", style: isStyle,),
                        const SizedBox(height: 20,),
                        Text("Color: ", style: isStyle,),
                         const SizedBox(height: 20,),
                        Text("Total: ", style: isStyle,),
                         const SizedBox(height: 20,),                       
                  ],),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                      children: [
                          const SizedBox(width: 20,), Text("S", style: isStyle,),
                          const SizedBox(width: 20,), Text("M", style: isStyle,),
                          const SizedBox(width: 20,), Text("L", style: isStyle,),
                          const SizedBox(width: 20,), Text("XL", style: isStyle,),                                   
                      ],),
                      const SizedBox(height: 20,),
                      Row(children: [
                        for(var i=0;i<5;i++)
                      
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: clr[i],
                            borderRadius: BorderRadius.circular(25)
                          ),
                        ),

                      ],),                     
                      const SizedBox(height: 20,),
                      Row(children: [
                      const SizedBox(width: 30,),
                      Text("-", style:isStyle,),
                      const SizedBox(width: 30,),
                      Text("1", style:isStyle,),
                      const SizedBox(width: 30,),
                      Text("+", style:isStyle,),
                      ],)
                    ],)
                  
              ],)
              ,
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total Payment ", style: isStyle,),
                  const Text("\$40.00 ", style: TextStyle(color: Color(0xffdb3032),fontSize: 18,fontWeight: FontWeight.bold))
                ],),
                const SizedBox(height: 30,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const CartScreen()));
                  },
                  child: ContainerButtonModel(
                    containerwidth: MediaQuery.of(context).size.width,
                    itext:"Check Out",
                    bgcolor: const Color(0xffdb3032),
                  ),

                )
          
            ],), 
          
          ),
        ),        
      );
      },
      
       child: ContainerButtonModel(
                containerwidth: MediaQuery.of(context).size.width/1.5,
                itext: "Buy Now",
                bgcolor: const Color(0xffdb3032),
              ), 

    );
  }
}