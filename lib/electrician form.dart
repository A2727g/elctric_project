import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ElectForm extends StatefulWidget{

  @override
State<ElectForm> createState()=> _ElectForm();

}
class _ElectForm extends State<ElectForm> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text(
       'Electrician form',
      ),
        actions: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(
            Icons.help_rounded
          ))
        ],

    ),
          body: SingleChildScrollView(
             child: Row(
               children: [
                 SizedBox(
                   height: 200,
                   width: 60,
                 ),

               ],
             ),
          ),
   );

  }
  }