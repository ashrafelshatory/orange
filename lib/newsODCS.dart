import 'package:flutter/material.dart';

class NewsODCS extends StatefulWidget {
  const NewsODCS({Key? key}) : super(key: key);

  @override
  State<NewsODCS> createState() => _NewsODCSState();
}

class _NewsODCSState extends State<NewsODCS> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
         child: Scaffold(
           backgroundColor: Colors.white70,
           body: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              Stack(
                children: [

                  Hero(tag: 'news',
                    child: Container(
                      child:  Image.asset(
                        'icons/logo.png',
                        width: 500.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                      height: 200,
                      width: double.infinity,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(color: Colors.deepOrange,shape: BoxShape.circle,boxShadow: [BoxShadow(blurRadius: 10,color: Colors.grey,spreadRadius: 0.2)]),
                        child: CircleAvatar(child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.orange),backgroundColor: Colors.white,)),
                  ),
                ],
              ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: SizedBox(height: 20,),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text('ODCs',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black)),
                     Text('1995-10-3',style: TextStyle(color: Colors.orange),),

                   ],
                 ),

               ),
               Column(crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Text('ODC Supports All Universties',style: TextStyle(color: Colors.white,fontSize: 20),),
                 ],
               )

             ],

           ),
         ),
      ),
    );
  }
}
