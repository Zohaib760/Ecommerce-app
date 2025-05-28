import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/OTP_screen.dart';
import 'package:flutter_application_1/recovery_screen.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {

  bool clrButton = false;
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Forgot Password",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                "Please Enter youe email address you will recieve a link to reset your password ",
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 60,
              ),
              TextFormField(
                controller: emailController,
                onChanged: (val) {
                  if (val != "") {
                    setState(() {
                      clrButton = true;
                    });
                  } 
                
                },
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: "Email Adreess ",
                  hintText: "Email to verify",
                  suffix: InkWell(
                      onTap: () {
                        setState(() {
                          emailController.clear();
                     
                        });
                      },
                      child: 
                     const Icon(CupertinoIcons.multiply, color: Color(0xffDB3032),)),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const RecoveryScreen()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffdb3032),
                    minimumSize: const Size.fromHeight(55),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: const Text(
                  "Send Code ",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              const SizedBox(height: 20,),
              Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       const Text("OR ",
                       style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                       ),
                       ),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const  OtpScreen()));
                        }, child: const Text("Verify Using Number ",
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
      ),
    );
  }
}
