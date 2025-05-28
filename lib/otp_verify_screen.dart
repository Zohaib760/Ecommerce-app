import 'package:flutter/material.dart';
import 'package:flutter_application_1/recovery_screen.dart';
// import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

class OtpVerifyScreen extends StatefulWidget {
  const OtpVerifyScreen({super.key});

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {

TextEditingController otpcontroller =  TextEditingController(text: "");

// BoxDecoration get _pinPutDecoration {
    
//     return BoxDecoration(
//       border: Border.all(color: Theme.of(context).primaryColor),
//       borderRadius: BorderRadius.circular(10.0),
//     );
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const SizedBox(
                height: 10,
              ),
             
              const Align(
                child: Text(
                  "Enter OTP ",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 80),
             const Align(
                child: Text(
                  "Enter the OTP we have send to your number ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 40),
    //           TextFieldPin(
    // textController: otpcontroller,
    // autoFocus: false,
    // codeLength: 4,
    // alignment: MainAxisAlignment.center,
    // defaultBoxSize: 60.0,
    // margin: 10,
    // selectedBoxSize: 60.0,
    // textStyle: const TextStyle(fontSize: 16),
    // defaultDecoration: _pinPutDecoration.copyWith(
    // border: Border.all(
    // color: Colors.grey,
    // )
    // ),
    // selectedDecoration: _pinPutDecoration,
    // onChange: (code){
    //   setState(() {
        
    //   });
    // },   
    
    // ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const RecoveryScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffDB3032),
                  minimumSize: const Size.fromHeight(55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  "Verify",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
