import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPscreen extends StatefulWidget {
  const OTPscreen();

  @override
  State<OTPscreen> createState() => _OTPscreenState();
}

class _OTPscreenState extends State<OTPscreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg_splash_image.jpeg"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              // Add your widgets here
              Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 2.0),
                  child:Container( alignment: Alignment.topLeft,child: IconButton(
                    icon: Image.asset(
                      "assets/icons/icon_back.png",
                      height: 30.0,
                      width: 30.0,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ))),
              Expanded(
                  child:
                  Container(alignment:Alignment.center,color:Colors.black.withOpacity(0.6),
                  child: Column(children: [
                    PinCodeTextField(
                      appContext: context,
                      length: 6,
                      onChanged: (value) {
                        // Handle OTP changes
                        print(value);
                      },
                      onCompleted: (value) {
                        // Handle OTP verification
                        print("Completed: $value");
                      },
                      // Set the fill color for the selected area (optional)
                        pinTheme: PinTheme(activeColor: Colors.amber,selectedColor: Colors.amber,inactiveColor: Colors.black26)
                    ),
                    //test git
                  ],),)
              )
              // Add more widgets as needed
            ],
          ),
        ),
      ),
    );
  }
}
