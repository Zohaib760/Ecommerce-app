

import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:flutter_application_1/sign_up.dart';
import 'package:flutter_application_1/forgot_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
   
  @override
  Widget build(BuildContext context) {
    return  Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            
            children: [
               const SizedBox(height: 130,),
              Image.asset('assets/freed.png'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      
                      keyboardType: TextInputType.emailAddress,
                      decoration:  const InputDecoration(
                        
                        labelText: "Enter Email",
                        hintText: "Email" ,   
                       
                        border: OutlineInputBorder(),
                         prefixIcon: Icon(Icons.person)
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(

                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Enter Password",
                        hintText: " Password" ,   
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye)
                        
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgotScreen()));
                        }, child: const Text("Forgot Password ",
                         style: TextStyle(
                        color: Color(0xffdb3032),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                       ),
                        )),
                     ),
                    const SizedBox(height: 30,),
                    ElevatedButton(

            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
            },
           style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffdb3032),
            minimumSize: const Size.fromHeight(55),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            )
           ),
           child:const Text("LOG IN", style: TextStyle(color: Colors.white, fontSize: 18),),
           
           ),
                     const SizedBox(height: 10,),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       const Text("Don't have Account? ",
                       style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                       ),
                       ),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpScreen()));
                        }, child: const Text("Sign Up",
                         style: TextStyle(
                        color: Color(0xffdb3032),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                       ),
                        ))

                    ],)
                   
                  ],
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}