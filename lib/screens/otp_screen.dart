// ignore: file_names

import 'package:flutter/material.dart';
// import 'package:flutter_application_1/OTP_verify_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black54,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const Align(
                
                child: Text("OTP Password", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              ),
               const SizedBox(
                height: 40,
              ),
              const Text(
                "Please Enter youe phone number you will recieve an OTP  to reset your password via phone number",
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 30,),
             const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter Mobile Number",
                prefixIcon: Icon(Icons.numbers),
              ),
             ),
             const SizedBox(height: 40,),
             ElevatedButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>const OtpVerifyScreen()));
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

            ],
          ),
          ),
          
      ),
    );
  }
}