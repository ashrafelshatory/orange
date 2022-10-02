import 'package:flutter/material.dart';
import 'package:orange/components/mycard.dart';

class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:
       Scaffold(appBar:
      AppBar(
         backgroundColor: Colors.white,
         leading: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.orange),
         title: Text('Support',style: TextStyle(fontSize: 20,color: Colors.black),),
         centerTitle: true,
       ) ,
           body: Padding(
             padding: const EdgeInsets.all(15.0),
             child: Column(children: [
               text_soppurt(icoon: Icons.account_box, Text: 'name'),
               SizedBox(height: 20,),
               text_soppurt(icoon: Icons.email, Text: 'email'),
               SizedBox(height: 20,),
               text_soppurt( Text: 'whats making you unhappy?'),
               SizedBox(height: 30,),
               Container(
                 height: 50.0,
                 width: double.infinity,
                 child: RaisedButton(
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(18.0),
                       side: BorderSide(color: Colors.orange)),
                   onPressed: () {},
                   padding: EdgeInsets.all(10.0),
                   color: Colors.deepOrange,
                   textColor: Colors.white,
                   child: Text("Submit",
                       style: TextStyle(fontSize: 20)),
                 ),
               ),

             ]),
           ),
       )
      ,);
  }
}
