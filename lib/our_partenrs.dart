import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Our_partners extends StatefulWidget {
  const Our_partners({Key? key}) : super(key: key);

  @override
  State<Our_partners> createState() => _Our_partnersState();
}

class _Our_partnersState extends State<Our_partners> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:

      Scaffold(appBar:
        AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.orange),
          title: Text('Our Partners',style: TextStyle(fontSize: 20,color: Colors.black),),
          centerTitle: true,
        ) ,
        body: Container(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black12),
                height: 220,
                width:double.infinity,
                child:Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [

                          Text('ODCs',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
                          Spacer(),


                        ],
                      ),
                    ),
                    Image.asset(
                      'icons/logo.png',
                      width: 500.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),

                  ],
                ) ,
              ),
            )
          ],
        ),
      ),
      )
      ,);
  }
}
