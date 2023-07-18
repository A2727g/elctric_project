import 'package:elctric_project/otpscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final TextEditingController _phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size;
    var size;
    var phone;
    return SafeArea(child:
    Scaffold(
      // backgroundColor: Colors.blue,
    body: GestureDetector(
      onTap: (){
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 36,),
            Image.asset('assets/image/electric.png'),

            SizedBox(
              height: 40,
            ),
            Column(
              children: [
              Center(child: Text('Enter your register mobile number',
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                SizedBox(
                  height: 32,
                  child: Text("Access your account with your mobile number"),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 8),
                  alignment: Alignment.center,
                  height: 56,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border:
                      Border.all(width: 1, color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _phone,
                    decoration: const InputDecoration(
                      isDense: true,
                      prefixIcon: Text(
                        "+91",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      prefixIconConstraints:
                      BoxConstraints(minWidth: 40, minHeight: 0),
                      border: InputBorder.none,
                      hintText: "mobile no",
                    ),
                    inputFormatters: [LengthLimitingTextInputFormatter(10)],
                    validator: (value) {
                      if (value!.isEmpty || value.length > 9) {
                        return 'Enter Number only';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 120,
                ),
                SizedBox(
                  height: 56,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        // mobile: mobile,
                        // fetchAlbum();
                      });
                      if (_phone.text.length < 9) {
                        Fluttertoast.showToast(
                          msg: "Mobile should be a 10-digit number",
                          backgroundColor: Colors.grey[100],
                          textColor: Colors.red[800],
                        );
                        // return;
                      } else {
                        // lightCustomBar();
                        // final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                        // sharedPreferences.setString('_phone',_phone.text);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  MyOtpPage(phone: _phone.text),
                            ));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                    child: const Text(
                      'SEND OTP',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                TextButton(onPressed: (){}, child: Text('Create a new account',
                style: TextStyle(fontSize: 16),))
              ],
            ),
    ])
    )
    )
    )
    );
  }
}
