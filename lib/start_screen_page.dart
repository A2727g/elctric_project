
import 'package:elctric_project/addpage.dart';
import 'package:elctric_project/filterpage.dart';
import 'package:elctric_project/filterparams.dart';
import 'package:flutter/material.dart';

class MainPageScreen extends StatefulWidget {
  const MainPageScreen({Key? key, required String phone}) : super(key: key);

  @override
  State<MainPageScreen> createState() => _MainPageScreenState();
}
//setup

class _MainPageScreenState extends State<MainPageScreen> {

  FilterParams? filterParams;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: Theme.of(context)
            .iconTheme
            .copyWith(color: const Color.fromARGB(255, 0, 37, 65)),
        title: TextFormField(
          decoration: InputDecoration(
              hintText: "Search",
              hintStyle: TextStyle(
                  color: Color.fromARGB(255, 131, 145, 161),
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
              border: InputBorder.none),
          // onChanged: ticketList,
        ),
        actions: [
         IconButton(onPressed: (){
           // var filterData;
           var filterdata;
           Navigator.push(context, MaterialPageRoute(
               builder: (BuildContext context) => FilterWidget(filterParams: filterParams,
                   filterData: filterdata)
           ));},
            icon: Icon(Icons.filter_alt_outlined))
        ],
      ),
      body:SingleChildScrollView(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => addpage(phone: ''),
              )).then((value) {
            if (value) {

              // setState (() {});
            }
          });
        },
        child: const Icon(Icons.add, size: 36),
      ),

    );
  }
  }