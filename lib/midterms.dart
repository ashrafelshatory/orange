import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orange/components/mycard.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';
class Midterms extends StatefulWidget {
  const Midterms({Key? key}) : super(key: key);

  @override
  State<Midterms> createState() => _LecturesState();
}

class _LecturesState extends State<Midterms> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:
    Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.orange),
        title: Text('Events',style: TextStyle(fontSize: 20,color: Colors.black),),
        centerTitle: true,
        actions: [SizedBox(width: 10,),SvgPicture.asset('icons/filter.svg',color: Colors.deepOrange,),SizedBox(width: 15,)],
      ) ,
      body: Column(
        children: [
          tasks(),
          tasks(),
          tasks(),


        ],
      )
    )
      ,);
  }
}
