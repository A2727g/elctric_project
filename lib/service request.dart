// import 'package:elctric_project/customer.dart';
// import 'package:elctric_project/start_screen_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:wave/config.dart';
// import 'package:intl/intl.dart';
//
// class Servicerequest extends StatefulWidget {
//   const Servicerequest({Key? key}) : super(key: key);
//   @override
//   State<Servicerequest> createState() => _ServicerequestState();
// }
// class _ServicerequestState extends State<Servicerequest> {
//   TextEditingController _Date = TextEditingController();
//   void _showDatePicker(){
//     showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(1991),
//       lastDate: DateTime(2050),
//     );
//   }
//   final _formKey = GlobalKey<FormState>();
//   String? _group1SelectedValue;
//
//
//   List<String>_list = [];
//   bool?_isFootBall = false;
//
//   @override
//   void initState(){
//     _group1SelectedValue = "";
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
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
//                 'Service Request',
//               ),
//               actions: [
//                 IconButton(onPressed: (){}, icon: Icon(
//                     Icons.logout_outlined
//                 ))
//               ],
//             ),
//             body:Form(
//               key: _formKey,
//               child:  GestureDetector(
//                 onTap: (){
//                   FocusManager.instance.primaryFocus!.unfocus();
//                 },
//                 child: SingleChildScrollView(
//                     child: Column(
//                       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       // crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Row(
//                             children: [
//                               Padding(
//                                   padding: EdgeInsets.only(left: 8),
//                                   child: Container(
//                                     // margin: const EdgeInsets.all(8.0),
//                                       padding: const EdgeInsets.all(8.0),
//                                       decoration: BoxDecoration(
//                                         // color: Colors.blue,
//                                         border: Border.all(color: Colors.blue),
//                                         borderRadius: BorderRadius.all(Radius.circular(8)),
//                                       ),
//                                       child: Row(
//                                         children: [
//                                           Icon(Icons.shopping_bag,
//                                             color: Colors.blue,),
//                                           Text(' Product',
//                                             style: TextStyle(
//                                                 color: Colors.blue ,fontWeight: FontWeight.w600
//                                             ),),
//                                         ],
//                                       )
//                                   )
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Row(
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.only(left:8),
//                                 child: Text('Product',
//                                   style: TextStyle(fontSize: 16),),
//                               ),
//                               IconButton(onPressed: (){},
//                                   icon: Icon(
//                                       Icons.keyboard_arrow_right_outlined
//                                   )),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Row(
//                             children: [
//                               Padding(
//                                   padding: EdgeInsets.only(left: 8),
//                                   child: Container(
//                                     // margin: const EdgeInsets.all(8.0),
//                                       padding: const EdgeInsets.all(8.0),
//                                       decoration: BoxDecoration(
//                                         // color: Colors.blue,
//                                         border: Border.all(color: Colors.blue),
//                                         borderRadius: BorderRadius.all(Radius.circular(8)),
//                                       ),
//                                       child: Row(
//                                         children: [
//                                           Icon(Icons.contacts_outlined,
//                                             color: Colors.blue,),
//                                           Text(' CONTACT DETAIL',
//                                             style: TextStyle(
//                                                 color: Colors.blue ,fontWeight: FontWeight.w600
//                                             ),),
//                                         ],
//                                       )
//                                   )
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Row(
//                             children: [
//                               Padding(padding: EdgeInsets.only(left: 8),
//                                   child: Icon(Icons.contacts_outlined)),
//                               Text('Full Name'),
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               Padding(
//                                   padding: EdgeInsets.only(left: 8),
//                           child: Icon(Icons.location_city)),
//                               Text('Address')
//                             ],
//                           ),
//                           Row(
//                             children: const [
//                               Padding(
//                                   padding: EdgeInsets.only(left: 8),
//                                   child: Icon(Icons.location_on_outlined)),
//                               Text('Pincode,City,State')
//                             ],
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Row(
//                             children: [
//                               Padding(
//                                   padding:EdgeInsets.only(left: 8),
//                           child: Icon(Icons.build)),
//                               Text('Problem')
//                             ],
//                           ),
//                            SizedBox(
//                              height: 12,
//                            ),
//                           Column(
//                               children: <Widget>[
//                                 ListTile(
//                                   title: Text("Product Not Working"),
//                                   leading: Radio(
//                                     value: "1",
//                                     groupValue: _group1SelectedValue,
//                                     onChanged: (value){
//                                       setState(() {
//                                         _group1SelectedValue = value.toString();
//                                       });
//                                     },
//                                   ),
//                                 ),
//                                 ListTile(
//                                   title: Text("Service Required"),
//                                   leading: Radio(
//                                     value: "2",
//                                     groupValue: _group1SelectedValue,
//                                       onChanged: (value){
//                                         setState(() {
//                                           _group1SelectedValue = value.toString();
//                                         });
//                                       },
//                                   ),
//                                 ),
//                                 ListTile(
//                                   title: Text("New Product Required"),
//                                   leading: Radio(
//                                     value: "3",
//                                     groupValue: _group1SelectedValue,
//                                     onChanged: (value){
//                                       setState(() {
//                                         _group1SelectedValue = value.toString();
//                                       });
//                                     },
//                                   ),
//                                 ),
//                                 ListTile(
//                                   title: Text("Contract To Be Renewed(ACMC)"),
//                                   leading: Radio(
//                                     value: "4",
//                                     groupValue: _group1SelectedValue,
//                                     onChanged: (value){
//                                     setState(() {
//                                       _group1SelectedValue = value.toString();
//                                     });
//                                   },
//                                   ),
//                                 ),
//                                 ListTile(
//                                   title: Text("Spares Required"),
//                                   leading: Radio(
//                                     value: "5",
//                                     groupValue: _group1SelectedValue,
//                                     onChanged: (value){
//                                       setState(() {
//                                         _group1SelectedValue = value.toString();
//                                       });
//                                     },
//                                   ),
//                                 ),
//                                 ListTile(
//                                   title: Text("Salt Required"),
//                                   leading: Radio(
//                                     value: "6",
//                                     groupValue: _group1SelectedValue,
//                                     onChanged: (value){
//                                       setState(() {
//                                         _group1SelectedValue = value.toString();
//                                       });
//                                     },
//                                   ),
//                                 ),
//                                 ListTile(
//                                   title: Text("Sanitizer Required"),
//                                   leading: Radio(
//                                     value: "7",
//                                     groupValue: _group1SelectedValue,
//                                     onChanged: (value){
//                                       setState(() {
//                                         _group1SelectedValue = value.toString();
//                                       });
//                                     },
//                                   ),
//                                 )
//                               ],
//                           ),
//                           Row(
//                             children:  [
//                               Padding(
//                                   padding: EdgeInsets.only(left: 8),
//                                   child: IconButton(onPressed: (){
//                                     DateFormat("dd MMM yyyy").format(DateTime.now());
//                                   },
//                                       icon: (Icon(Icons.calendar_month)))),
//                               InkWell(child: Text('Appointment Date'))
//                             ],
//                           ),
//                           SizedBox(
//                            height: 20,
//                             ),
//                           Container(
//                             padding: const EdgeInsets.all(8.0),
//                             alignment: Alignment.center,
//                             child: TextFormField(
//                                 keyboardType: TextInputType.emailAddress,
//                                 decoration: InputDecoration(
//                                     floatingLabelBehavior:FloatingLabelBehavior.always,
//                                     hintText: 'Remarks(Optional)'
//                                 ),
//                                 validator: (value){
//                                   if(value!.isEmpty) {
//                                     return ('not empty');
//                                   }else{
//                                     return null;
//                                   }
//                                 }
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: <Widget>[
//                               ListTile(
//                                 title: Text(" I hearby accept to be contracted by phone, SMS, WhatsApp or Email by Zero B representative"),
//                                 leading: Checkbox(
//                                   activeColor: Colors.green,
//                                   value: _isFootBall,
//                                   onChanged: (value) {
//                                     setState(() {
//                                       _isFootBall = value;
//                                       String selectVal = 'FootBall';
//                                       value!?_list.add(selectVal):_list.remove(LogicalKeyboardKey.select);
//                                     });
//                                   },
//                                 ),
//                               )
//                             ],
//                           )
//                         ]
//                     )
//                 ),
//               ),
//             ),
//
//             bottomNavigationBar: Container(
//                 padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
//                 decoration: BoxDecoration(color: Colors.white, boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey[300]!,
//                     blurRadius: 10.0,
//                   ),
//                 ]),
//                 child: Padding(
//                     padding: const EdgeInsets.all(0.0),
//                     child: ElevatedButton(
//                       // icon: Icon(Icons.arrow_forward_rounded,),
//                       // label: Text('Save and Next',),
//                       onPressed: () async {
//                         // final isValidForm = _formKey.currentState!.validate();
//                         // if(isValidForm) {
//                         //   showDialog(
//                         //       context: context,
//                         //       builder: (context) =>
//                         //       const Center(child: CircularProgressIndicator()));
//                         //   await Future.delayed(
//                         //       const Duration(seconds: 2), () =>
//                         Navigator.push(context,
//                             MaterialPageRoute(
//                                 builder: (BuildContext context) =>
//                                 // Teamregistration()
//                                 const Customer()
//                             ));
//                         // ));
//                         // }else{
//                         //   Fluttertoast.showToast(msg:'Value should not empty',
//                         //       toastLength: Toast.LENGTH_SHORT,
//                         //       gravity: ToastGravity.BOTTOM,
//                         //       timeInSecForIosWeb: 2,
//                         //       backgroundColor: Colors.black,
//                         //       fontSize:15
//                         //   );
//                         // }
//                       },
//                       style: ElevatedButton.styleFrom(
//                           elevation: 10,
//                           minimumSize: const Size(double.maxFinite, 52),
//                           backgroundColor: Colors.blue,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(12))),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: const [
//                           Text("Submit", style: TextStyle(fontSize: 20)),
//                           SizedBox(
//                             width: 8,
//                           ),
//                         ],
//                       ),
//                     )
//                 )
//
//             )));
//   }
// }
//
//
