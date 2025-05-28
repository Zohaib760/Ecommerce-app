

import 'package:flutter/material.dart';

import 'package:flutter_application_1/login_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

// ignore: must_be_immutable
class OnboardingScreen extends StatelessWidget {

final introkey = GlobalKey<IntroductionScreenState>();

 
     PageDecoration pageDecoration = const PageDecoration(
    titleTextStyle: TextStyle(fontSize: 28,
    fontWeight: FontWeight.w700,
    ),

    bodyTextStyle: TextStyle(fontSize: 19),
    bodyPadding: EdgeInsets.fromLTRB(16,0,16,16),
    pageColor: Colors.white,
    imagePadding: EdgeInsets.zero,
  );

  OnboardingScreen({super.key});
   
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      
      
      key: introkey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Shop Now ",
          body: "hahdjhsdfhdsjkfhdsfklsdfksdfhksdlfdsjfdsjfdkslfjdsklfjsdkfjsdklfjsdklfjsdklfj",
          image: Image.asset('assets/splash1.png', width: 200,),
          decoration: pageDecoration,
        ),

        PageViewModel(
          title: "Big Discount ",
          body: "hahdjhsdfhdsjkfhdsfklsdfksdfhksdlfdsjfdsjfdkslfjdsklfjsdkfjsdklfjsdklfjsdklfj",
          image: Image.asset('assets/splash2.png', width: 200,),
          decoration: pageDecoration,
        ),

        PageViewModel(
          title: "Free Delivery ",
          body: "hahdjhsdfhdsjkfhdsfklsdfksdfhksdlfdsjfdsjfdkslfjdsklfjsdkfjsdklfjsdklfjsdklfj",
          image: Image.asset('assets/splash3.png', width: 200,),
          decoration: pageDecoration,
          footer: Padding(padding: const EdgeInsets.only(left: 15, right: 15),
          child: ElevatedButton(

            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
            },
           style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffdb3032),
            minimumSize: const Size.fromHeight(55),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            )
           ),
           child:const Text("Let's Shop", style: TextStyle(color: Colors.white, fontSize: 18),),
           
           ),
          
          ),

        ),
      ],
      showSkipButton: true,
      showDoneButton: true,
      showBackButton: true,
      back: const Text("BAck ", style: TextStyle(
        fontWeight: FontWeight.w600,
        color: Color(0xffef6969)
      ),),

     next:const Text("Next ", style: TextStyle(
        fontWeight: FontWeight.w600,
        color: Color(0xffef6969)
      ),), 

       done: const Text("Done ", style: TextStyle(
        fontWeight: FontWeight.w600,
        color: Color(0xffef6969)
      ),),

     skip:const Text("Skip ", style: TextStyle(
        fontWeight: FontWeight.w600,
        color: Color(0xffef6969)
      ),), 

       
      onDone: (){ },
      onSkip: (){},

      dotsDecorator: DotsDecorator(
        size: const Size.square(10),
        activeSize: const Size(20, 10),
        activeColor: const Color(0xffef6969),
        color: Colors.black26,
        spacing: const EdgeInsets.symmetric(horizontal: 3),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        )
      ),

    );
  }
}