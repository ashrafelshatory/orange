import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orange/components/mycard.dart';

class Finals extends StatefulWidget {
  const Finals({Key? key}) : super(key: key);

  @override
  State<Finals> createState() => _LecturesState();
}

class _LecturesState extends State<Finals> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:
    Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.orange),
        title: Text('Lectures',style: TextStyle(fontSize: 20,color: Colors.black),),
        centerTitle: true,
        actions: [SizedBox(width: 10,),SvgPicture.asset('icons/filter.svg',color: Colors.deepOrange,),SizedBox(width: 15,)],
      ) ,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            tasks(),
            SizedBox(height: 10,),
            tasks(),
            SizedBox(height: 10,),
            tasks()
          ],
        ),
      ),
    )
      ,);
  }
}
