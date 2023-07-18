import 'dart:async';
import 'dart:convert';
import 'package:elctric_project/start_screen_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pinput/pinput.dart';
import 'constant.dart';
import 'timer_widget.dart';
import 'package:http/http.dart';
class MyOtpPage extends StatefulWidget {
  const MyOtpPage({Key? key, this.phone}) : super(key: key);
  final String? phone;

  @override
  State<MyOtpPage> createState() => _MyOtpPageState();
}

class _MyOtpPageState extends State<MyOtpPage> {
  String otp = "";
  // late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    // futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: (){
            FocusManager.instance.primaryFocus!.unfocus();
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SizedBox(
                      child: Image.asset('assets/image/electric.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 44,
                  ),
                  const Text(
                    'OTP Verification',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 32,
                        color: Colors.blue),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Enter the verification code we just sent on your mobile number',
                    style: TextStyle(fontSize: 16,color: Colors.grey[600]),
                  ),
                  const SizedBox(
                      height: 20

                  ),

                  FittedBox(
                    child: Row(
                      children: <Widget>[
                        Text(
                          'please enter OTP sent to',
                          style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                        ),
                        Text(
                          '  +91 ${widget.phone}',
                          style: const TextStyle(color: Colors.black,fontSize:16),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.edit,
                              color: Colors.grey,
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Pinput(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    defaultPinTheme: PinTheme(
                        textStyle: (const TextStyle(fontSize:28)),
                        // width:64,height:64,
                        constraints: const BoxConstraints(
                          minWidth: 64,
                          minHeight: 64,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(12))),
                    focusedPinTheme: PinTheme(
                        textStyle: (const TextStyle(fontSize:28)),
                        // width:64,height:64,
                        constraints: const BoxConstraints(
                          minWidth: 64,
                          minHeight: 64,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green),
                            borderRadius: BorderRadius.circular(12))),
                    submittedPinTheme: PinTheme(
                        textStyle: (const TextStyle(fontSize:28)),
                        // width:64,height:64,
                        constraints: const BoxConstraints(
                          minWidth: 64,
                          minHeight: 64,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green),
                            borderRadius: BorderRadius.circular(12))),
                    // validator: (s) {
                    //   return s == '4444' ? null : 'Pin is incorrect';
                    // },
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    showCursor: true,
                    onCompleted: (pin) {
                      logPrint.w('verify button pressed');
                      otp = pin;
                    } ,
                  ),
                  const SizedBox(
                    height: 16,
                  ),

                  ///timer widget
                  TimerWidget(
                    // time: 10,
                    onClick: (val) {
                      ///resend logic
                      // setState(() {});
                    },),
                  const SizedBox(
                    height: 144,
                  ),
                  /// verify button
                  Center(
                    child: SizedBox(
                      height: 56,
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () async{

                          // fetchAlbum();
                          showDialog(context: context, builder:(context)=>
                          const Center(child: CircularProgressIndicator()));
                          await Future. delayed(const Duration(seconds: 2));
                          logPrint.w('verify button pressed');
                          // return;
                          if (otp == '1111') {
                            await Future. delayed(const Duration(seconds: 0), () => Navigator.pop(context));
                            await Future. delayed(const Duration(seconds: 0), () => Navigator.pop(context));
                            // lightCustomBar();
                            await Future. delayed(const Duration(seconds: 0), () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                  MainPageScreen(phone: '',)
                                )));
                          }
                          else {
                            await Future. delayed(const Duration(seconds: 0), () =>  Navigator.pop(context));
                            Fluttertoast.showToast(
                              msg: "Wrong Otp",
                              backgroundColor: Colors.grey[100],
                              textColor: Colors.red[800],
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        child: const Text(
                          'Verify OTP',
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Future<Album> fetchAlbum() async {

    // final response = await otp;(Uri.parse('https://coolboxapi.indicold.in/verifyOtp');
    //   headers: <String, String>{
    //     'Content-Type': 'application/json; charset=UTF-8',
    //   },
    //   body: jsonEncode(<String,dynamic>{
    //     "mobile": "9910610939"
    //     // 'title': title,
    //   }),
    // );
    // // logPrint.w(response.statusCode);

    // if (response.statusCode == 200) {
    //   // If the server did return a 200 OK response,
    //   // then parse the JSON.
    //   return Album.fromJson(jsonDecode(response.body));
    // } else {
    //   // If the server did not return a 200 OK response,
    //   // then throw an exception.
    //   throw Exception('Failed to load album');
    // }
  }
// }

class Album {
  final int mobileNumber;

  const Album({
    required this.mobileNumber,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      mobileNumber: json['9910610939'],
    );
  }
}

