// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/product_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> tabs = ["All", "Category", "Top", "Recomended"];
  List imagelist = [
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

  List reveiews = [
    "54",
    "120",
    "542",
    "34",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.5,
                    decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 2,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xffDB3032),
                          ),
                          label: Text(
                            "Enter Your Product ",
                            style: TextStyle(),
                          )),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(5),
                      height: 50,
                      width: MediaQuery.of(context).size.width / 6,
                      decoration: BoxDecoration(
                          color: Colors.black12.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 2,
                              spreadRadius: 1,
                            ),
                          ]),
                      child: const Icon(
                        Icons.notifications,
                        color: Color(0xffDB3032),
                      )),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 150,
                
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xffFFF0DD),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Image(image: AssetImage("assets/freed.png")),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: tabs.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return FittedBox(
                        child: Container(
                          height: 50,
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(28),
                          ),
                          child: Center(
                            child: FittedBox(
                              child: Text(
                                tabs[index],
                                style: const TextStyle(
                                    color: Colors.black38,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              //List VIEW IS HERE---------------------------
              Container(
                height: 180,
                
                child: ListView.builder(
                    itemCount: imagelist.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        // height: 200,
                        width: 320,
                // color: Colors.red,
             
                        margin: const EdgeInsets.only(right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                            height: 190,
                            width: 170,
                              child: Stack(
                                children: [
                                  InkWell(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductScreen()));
                                      },
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(imagelist[index],
                                        height: 190,
                                        width: 170,
                                        fit: BoxFit.cover,),
                                      )),
                                  Positioned(
                                      top: 10,
                                      right: 10,
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        child: const Icon(
                                          Icons.favorite,
                                          color: Color(0xffDB3032),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            
                           
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    prdoucttitles[index],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 5,),
                                  const SizedBox(
                                    height: 120,
                                    width: 120,
                                    child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the, industry's standard dummy text ever since the 1500s,",
                                    maxLines: 7,
                                    overflow: TextOverflow.ellipsis,
                                    
                                    ),
                                  ),
                                   Row(
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Text(
                                    reveiews[index],
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                   Text(
                                    '(' + prices[index] + ')',
                                    style:  const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffdb3032)
                                        ),
                                  ),
                              
                                    ],
                                  ),
                                  
                                  
                                 
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
           
//GRid view is here-------------------
              const SizedBox(height: 30,),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Newest Product ", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
              const SizedBox(height: 30,),
              Center(
                child: GridView.builder(
                  itemCount: prdoucttitles.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  // crossAxisSpacing: 2,
                  
                  ), 
                  
                  itemBuilder: (context,index){
                  return Container(
                         
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                              // height: 220,
                              width: 220,
                             
                                child: Stack(
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductScreen()));
                                        },
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset(imagelist[index],
                                          height: 220,
                                           width: 180,
                                           fit: BoxFit.cover,
                                          ),
                                        )),
                                    Positioned(
                                        top: 10,
                                        right: 10,
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          child: const Icon(
                                            Icons.favorite,
                                            color: Color(0xffDB3032),
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                prdoucttitles[index],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Text(
                                    reveiews[index],
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '(' + prices[index] + ')',
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                }),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
