import 'package:flutter/material.dart';

//import "package:flutter_otp/flutter_otp.dart";

// Now instantiate FlutterOtp class in order to call sendOtp function
FlutterOtp otp = FlutterOtp();

class FlutterOtp {
  void sendOtp(String phoneNumber, String s, int minNumber, int maxNumber,
      String countryCode) {}
}

class SendOtp extends StatelessWidget {
  String phoneNumber = "9580729893"; //enter your 10 digit number
  int minNumber = 1000;

  @override
  int maxNumber = 6000;
  String countryCode =
      "+91"; // give your country code if not it will take +1 as default
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("OTP Confirmation ")),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(children: <Widget>[
              Container(
                child: TextField(
                  //controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter OTP Here',
                  ),
                ),
              ),
              Container(
                child: Center(
                    child: RaisedButton(
                  child: Text("Send"),
                  onPressed: () {
                    // call sentOtp function and pass the parameters

                    otp.sendOtp(
                        phoneNumber,
                        'OTP is : pass the generated otp here ',
                        minNumber,
                        maxNumber,
                        countryCode);
                  },
                )),
              ),
            ])));
  }
}
