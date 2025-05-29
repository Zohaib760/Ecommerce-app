import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/payment_method_screen.dart';
import 'package:flutter_application_1/widgets/container_button_model.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<String> imageList = [
    "assets/image1.jpg",
    "assets/image2.jpg",
    "assets/image3.jpg",
    "assets/image4.jpg",
  ];

  List prdoucttitles = [
    "Warm Zipper",
    "knitted woo!",
    "Zipper Win",
    "Child WIn"
  ];

  List prices = [
    "\$300",
    "\$650",
    "\$50",
    "\$100",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 40,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              ListView.builder(
                  itemCount: imageList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(
                              splashRadius: 20,
                              value: true,
                              activeColor: const Color(0xffdb3032),
                              onChanged: (val) {
                                setState(() {});
                              }),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              imageList[index],
                              height: 80,
                              width: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                prdoucttitles[index],
                                style: const TextStyle(
                                    color: Colors.black87,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Hodded Jacket",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black26,
                                ),
                              ),
                              Text(
                                prices[index],
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffdb3032),
                                    fontWeight: FontWeight.w900),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                          const Row(
                            children: [
                              Icon(
                                CupertinoIcons.minus,
                                color: Colors.green,
                              ),
                              SizedBox(width: 10),
                              Text("1",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700)),
                              SizedBox(width: 10),
                              Icon(
                                CupertinoIcons.plus,
                                color: Color(0xffdb3032),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Select All",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                  Checkbox(
                      splashRadius: 15,
                      activeColor: const Color(0xffdb3032),
                      value: false,
                      onChanged: (value) {})
                ],
              ),
              const Divider(
                height: 0,
                thickness: 1,
                color: Colors.black,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total Payment",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                  Text("\$300.50",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          color: Color(0xffdb3032))),
                ],
              ),
              const SizedBox(height: 4,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const PaymentMethodScreen()));
                },
                child: ContainerButtonModel(
                  
                  containerwidth: MediaQuery.of(context).size.width,
                  bgcolor: const Color(0xffbd3032),
                  itext: "Check Out",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
