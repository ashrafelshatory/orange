import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orange/components/mycard.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange/cubit/Lectures_cubit.dart';
import 'package:orange/model/lectures_model.dart';
import 'package:orange/view_model/Database/network/dio_helper.dart';

class Lectures extends StatelessWidget {

  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Lectures_cubit()..getHomeData(),
      child: BlocConsumer<Lectures_cubit, LecturesStates>(

        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          if(state is GetHomeDataLoadingState)
          {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator(color: Colors.deepOrange,)),
            );
          }
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
              child: ListView.separated(
                separatorBuilder: (context, index) =>SizedBox(height: 10,),
                itemBuilder: (context, index) =>
                    lectures_card(Lectures_cubit.get(context).lectures_model!.data![index]),
                itemCount: Lectures_cubit.get(context).lectures_model!.data!.length,

              ),

            ),
          )
            ,);
        },
      ),
    );
  }

}

Widget lectures_card(Data data){
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    elevation: 10.0,
    child: Padding(

      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(children: [
            Text(data.lectureSubject!,style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
            Spacer(),
            Icon(Icons.timer,),
            Text('2hrs'),

          ],),
          SizedBox(height: 20,),
          Row(
            children: [
              Column(children: [
                Text('Lecture Day',style: TextStyle(color: Colors.grey),),
                Row(
                  children: [
                    SvgPicture.asset('icons/event.svg'),
                    Text(data.lectureDate.toString())
                  ],
                )
              ],),
              SizedBox(width: 5,),
              Column(children: [
                Text('Start Time',style: TextStyle(color: Colors.grey)),
                Row(
                  children: [
                    SvgPicture.asset('icons/time.svg',color: Colors.green,),
                    Text(data.lectureStartTime.toString())
                  ],
                )
              ],),
              SizedBox(width: 5,),
              Column(children: [
                Text('End Time',style: TextStyle(color: Colors.grey)),
                Row(
                  children: [
                    SvgPicture.asset('icons/time.svg',color: Colors.deepOrange,),
                    Text(data.lectureEndTime.toString())
                  ],
                )
              ],),
            ],
          )

        ],

      ),
    ),
  );

}
