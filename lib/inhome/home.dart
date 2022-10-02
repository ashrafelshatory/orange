
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orange/events.dart';
import 'package:orange/finals.dart';
import 'package:orange/midterms.dart';
import 'package:orange/notes.dart';
import 'package:orange/sections.dart';
import '../components/mycard.dart';
import '../lectures.dart';

class Home1 extends StatelessWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child:
    Column(
      children: [
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text('Orange',style: TextStyle(color:Colors.orange,fontSize: 30,fontWeight: FontWeight.bold),),
              Text(' Digital Center',style: TextStyle(color:Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),

            ],
          ),
        ),

        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Column(
              children: [
                GestureDetector(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Lectures()));}
                 ,child: mycard(text:'Lectures' , icon:SvgPicture.asset('icons/lecture.svg',height: 40,width: 40,))),
                GestureDetector(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Midterms()));}
    ,child:mycard(text:'Midterms' , icon: SvgPicture.asset('icons/midterm.svg',height: 40,width: 40,))),
                GestureDetector(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Eventss()));}
    ,child:mycard(text:'Events' , icon:SvgPicture.asset('icons/event.svg',height: 40,width: 40,))),

              ],

            ),
            Column(
              children: [
                GestureDetector(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Sections()));},
                child:mycard(text:'Sections' , icon: SvgPicture.asset('icons/sections.svg',height: 40,width: 40,color: Colors.deepOrange,))),
                GestureDetector(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Finals()));},
                 child:mycard(text:'Finals' , icon: SvgPicture.asset('icons/final.svg',height: 40,width: 40,))),
                GestureDetector(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Notes()));},
                child: mycard(text:'Notes' , icon: SvgPicture.asset('icons/notes.svg',height: 40,width: 40,))),

              ],

            ),
          ],
        ),
      ],
    ),);
  }
}
