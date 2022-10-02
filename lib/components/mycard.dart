import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget mycard({required String text,required Widget icon }){
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Card(

        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),),
        elevation: 10.0,

          child: Container(
            width: 150,
            height: 110,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(backgroundColor:Colors.white70 ,child: icon),
                SizedBox(
                  height: 10.0,
                ),
                Text(text,style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold,fontSize: 20)),
              ],
            ),
          ),
        ),
  );

}


Widget tasks(){
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
                Text('Flutter',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
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
                        Text('Wednesday')
                      ],
                    )
                  ],),
                  SizedBox(width: 5,),
                  Column(children: [
                    Text('Start Time',style: TextStyle(color: Colors.grey)),
                    Row(
                      children: [
                        SvgPicture.asset('icons/time.svg',color: Colors.green,),
                        Text('12:00pm')
                      ],
                    )
                  ],),
                  SizedBox(width: 5,),
                  Column(children: [
                    Text('Start Time',style: TextStyle(color: Colors.grey)),
                    Row(
                      children: [
                        SvgPicture.asset('icons/time.svg',color: Colors.deepOrange,),
                        Text('12:00pm')
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

Widget text_soppurt({IconData? icoon,required String Text}){
  return TextFormField(
    obscureText: true,
    onTap:(){
    },
    onChanged: (value){},
    decoration: InputDecoration(

      // label: Text('email'),
        focusColor: Colors.orange,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepOrange)),
        hintText: Text,prefixIcon:Icon(icoon,color: Colors.grey) ,

        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20)
        )
    ),
  );
}
Widget text_addnotes({IconData? icoon,required String Text}){
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: TextFormField(

      obscureText: true,
      onTap:(){
      },
      onChanged: (value){},

      decoration: InputDecoration(

        // label: Text('email'),
          focusColor: Colors.orange,
          hintText: Text,

          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),topLeft: Radius.circular(15) ),
            borderSide: BorderSide(color: Colors.green)
          )
      ),
    ),
  );
}