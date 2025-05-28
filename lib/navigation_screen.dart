
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart_screen.dart';
import 'package:flutter_application_1/favorite_screen.dart';
import 'package:flutter_application_1/home_screen.dart';

import 'package:flutter_application_1/profile_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  
  int pageindex = 0;

  List<Widget> pages =const [
     HomeScreen(),
     CartScreen(),
     FavoriteScreen(),
     ProfileScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageindex,
        children: pages,
      ),
      floatingActionButton: SafeArea(
        child: FloatingActionButton(
          onPressed: (){},
        shape: const CircleBorder(),
        backgroundColor: const Color(0xffDB3032),
        
        child: const Icon(Icons.qr_code,
        size: 25,
        color: Colors.white
        ),
        ) ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: const [
          CupertinoIcons.home,
          CupertinoIcons.cart,
          CupertinoIcons.heart,
          CupertinoIcons.profile_circled,
          
        ],
        inactiveColor: Colors.black,
        activeIndex: pageindex,
        notchSmoothness: NotchSmoothness.softEdge,
         iconSize: 25,
         activeColor: const Color(0xffDB3032),
         elevation: 0,
        leftCornerRadius: 10,
        rightCornerRadius: 10,
        
        gapLocation: GapLocation.center,
           onTap: (index){
            setState(() {
               pageindex = index;
            });
          }
          )
    );
  }
}