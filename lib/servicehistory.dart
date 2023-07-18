// import 'package:elctric_project/start_screen_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:wave/config.dart';
// import 'package:intl/intl.dart';
// import 'servicehistory.dart';
//
//
// class servicehistory extends StatefulWidget {
//   const servicehistory({Key? key}) : super(key: key);
//   @override
//   State<servicehistory> createState() => _servicehistoryState();
// }
// class _servicehistoryState extends State<servicehistory> {
//
//   @override
//   Widget build(BuildContext context) {
//     MediaQuery.of(context).size;
//     return SafeArea(
//         child: Scaffold(
//             appBar: AppBar(
//               backgroundColor: Colors.blue,
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
//                 'History',
//               ),
//               actions: [
//                 IconButton(onPressed: (){}, icon: Icon(
//                     Icons.logout_outlined
//                 ))
//               ],
//             ),
//            backgroundColor: Colors.blue,
//           body: PageView(
//             children: [
//               // buildPage(
//               //   color: Colors.white,
//               //   urlImage:'assets/image/no data found.png',
//               //   title : 'NO Data Found!!',
//               //   Subtitle: ''
//               // ),
//             ],
//           ),
//             ));
//   }
// }
//
//
