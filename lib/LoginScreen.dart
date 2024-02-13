import 'package:flutter/material.dart';
import 'package:myday/OTPScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController textFieldMobileNumber = TextEditingController();
  static const List<Color> colorButtonBg = [
    Color(0xc2e09f49),
    Color(0xa0e28226),
    Color(0xbdef7c1f),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg_splash_image.jpeg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned.fill(
            bottom: 0,
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 130.0,left: 30.0,right: 30.0),
                  child: Image.asset("assets/icons/app_icon_get_start.png"),
                ),
                SizedBox(height: 100.0,width: 0.0,),
                Container(
                  height: 300,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Card(
                          color: Colors.amber.withOpacity(0.6),
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: BorderSide(
                              color: Colors.white60 ?? Colors.transparent,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 0.0, horizontal: 20.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/icons/icon_flag.png",
                                  height: 20.0,
                                  width: 20.0,
                                ),
                                SizedBox(width: 5.0, height: 0.0),
                                Text(
                                  '+91',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Bold',
                                    color: Colors.white60,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                  height: 0.0,
                                ),
                                Container(
                                  height: 20.0,
                                  width: 2.0,
                                  color: Colors.white60,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: 5.0,
                                      left: 0.0,
                                      right: 0.0,
                                      bottom: 0.0,
                                    ),
                                    child: TextField(
                                      controller: textFieldMobileNumber,
                                      cursorColor: Colors.yellow[300],
                                      maxLength: 10,
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white60,
                                        fontFamily: 'SemiBold',
                                        backgroundColor: Colors.transparent,
                                      ),
                                      keyboardType: TextInputType.number,
                                      textAlignVertical:
                                          TextAlignVertical.center,
                                      decoration: InputDecoration(
                                        fillColor: Colors.transparent,
                                        filled: true,
                                        counter: Offstage(),
                                        hintText: 'Enter Mobile Number',
                                        hintStyle: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.white38,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            width: 3,
                                            color: Colors.transparent,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            width: 3,
                                            color: Colors.transparent,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        contentPadding: EdgeInsets.only(
                                          left: 5.0,
                                          bottom: 0.0,
                                          top: 0.0,
                                          right: 0.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        child: IconButton(
                          icon: Image.asset(
                            "assets/icons/icon_next.png",
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OTPscreen(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
