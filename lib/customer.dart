// import 'package:elctric_project/installation.dart';
// import 'package:elctric_project/start_screen_page.dart';
// import 'package:flutter/material.dart';
// import 'package:wave/config.dart';
// import 'package:wave/wave.dart';
// import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
//
// class Customer extends StatefulWidget {
//   const Customer({Key? key}) : super(key: key);
//   @override
//   State<Customer> createState() => _CustomerState();
// }
// class _CustomerState extends State<Customer> {
//   @override
//   Widget build(BuildContext context) {
//     final number = '8127771100';
//     MediaQuery.of(context).size;
//     return SafeArea(
//         child: Scaffold(
//             appBar: AppBar(
//               backgroundColor: Colors.lightBlueAccent,
//               elevation: 1,
//               shadowColor: Colors.white,
//               leading: IconButton(
//                 onPressed: (){
//                   Navigator.push(context,
//                       MaterialPageRoute(
//                           builder: (BuildContext context) =>
//                           // Teamregistration()
//                           const MainPageScreen(phone: '')
//                       ));                },
//                 icon: const Icon(
//                   Icons.arrow_back,
//                   color: Colors.white,
//                 ),
//               ),
//               title: const Text(
//                 'Customer Care',
//               ),
//               actions: [
//                 IconButton(onPressed: (){
//                   Navigator.pushReplacement(context,
//                       MaterialPageRoute(builder:
//                   (context) => Installation(),
//                   )
//                   );},
//                     icon: Icon(
//                     Icons.logout
//                 ))
//               ],
//             ),
//             backgroundColor: Colors.lightBlueAccent,
//             body: GestureDetector(
//               onTap: (){
//                 FocusManager.instance.primaryFocus!.unfocus();
//               },
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     SizedBox(
//                       height: 20,
//                     ),
//                     const Text('If you want to register any new installation,complaints or want to renew ACMC contract then please call or send mail.',
//                         style: TextStyle(color: Colors.white,fontWeight:FontWeight.w500,fontSize:16)),
//                     const  SizedBox(
//                       height: 20,
//                     ),
//                     Container(
//                       child: Image.asset('assets/image/customer.png',
//                       ),
//                     ),
//                     const  SizedBox(
//                       height: 120,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.only(left: 50,right: 50),
//                           child: ConstrainedBox(
//                             constraints: BoxConstraints.tightFor(height: 30,width: 100),
//                             child: ElevatedButton(
//                               child:  Text("Cancel",
//                                 style: TextStyle(color: Colors.black,
//                                 ),
//                               ),
//                               onPressed:(){},
//                               style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
//                             ),
//                           ),
//                         ),
//                         ConstrainedBox(
//                           constraints: BoxConstraints.tightFor(height: 30,width: 100),
//                           child: ElevatedButton(
//                             child: Text("Call",
//                               style: TextStyle(color: Colors.black,
//                               ),
//                             ),
//                             onPressed:()async {
//                               await FlutterPhoneDirectCaller.callNumber(number);
//                             },
//                             style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
//                           ),
//                         ),
//                       ],
//                     ),
//                     // WaveWidget(
//                     //   config: CustomConfig(
//                     //       gradients:[
//                     //         [Colors.red,Colors.lightBlueAccent]
//                     //       ],
//                     //       durations:[3500], heightPercentages: [0,20]
//                     //   ),
//                     //   size:Size(double.infinity,double.infinity),
//                     // )
//                   ],
//                 ),
//               ),
//             )
//         ));
//   }
// }
