import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orange/components/mycard.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';
class Eventss extends StatelessWidget {
  const Eventss({Key? key}) : super(key: key);

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
        body: PagedVerticalCalendar(

          invisibleMonthsThreshold: 1,
          startWeekWithSunday: true,
          onMonthLoaded: (year, month) {
            // on month widget load
          },

        )
    )
      ,);
  }
}
