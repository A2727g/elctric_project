
import 'package:elctric_project/electrician%20form.dart';
import 'package:elctric_project/filterpage.dart';
import 'package:elctric_project/filterparams.dart';
import 'package:flutter/material.dart';

class addpage extends StatefulWidget {
  const addpage({Key? key, required String phone}) : super(key: key);

  @override
  State<addpage> createState() => _addpageState();
}
//setup

class _addpageState extends State<addpage> {

  FilterParams? filterParams;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: Theme.of(context)
            .iconTheme
            .copyWith(color: const Color.fromARGB(255, 0, 37, 65)),
        title: TextFormField(
          decoration: const InputDecoration(
              hintText: "Search",
              hintStyle: TextStyle(
                  color: Color.fromARGB(255, 131, 145, 161),
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
              border: InputBorder.none),
          // onChanged: ticketList,
        ),
        actions: [
          TextButton(onPressed:(){
            Navigator.pop(context);
          } ,
              child:const Text('Help'))
        ],
      ),
      body: SingleChildScrollView(
       child: Row(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           SizedBox(
             height: 200,
             width: 60,
           ),
               CircleAvatar(
                   backgroundImage:NetworkImage('https://cdn3.iconfinder.com/data/icons/people-jobs-2-1/512/xxx011-512.png') ,
                   radius: 30.0,
                 backgroundColor: Colors.white,
                 child: TextButton(onPressed: (){
                   Navigator.push(
                       context,
                       MaterialPageRoute(
                         builder: (BuildContext context) =>
                             ElectForm(),
                       ));
                 }, child: Text(
                   'book your electrician'
                 )),
           ),
           SizedBox(
             height: 40,
             width: 30,
           ),
           CircleAvatar(
               backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.3fQw_eP_1YnIxcO-m-OxpQHaHa?pid=ImgDet&rs=1'),
               radius: 30.0
           ),
           SizedBox(
             height: 40,
             width: 30,
           ),
           CircleAvatar(
               backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.t_W5C13j9Uc17OtBxTI24gHaHa?pid=ImgDet&w=207&h=207&c=7&dpr=1.5'),
               radius: 30.0
           )
         ],
       ),
      )

    );
  }
}