import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:orange/model/info_model.dart';
import 'package:orange/view_model/Database/network/dio_helper.dart';
import 'package:orange/view_model/Database/network/end_points.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {

  @override

  Widget build(BuildContext context) {


    getHomeData();
    return MaterialApp(home: Scaffold(appBar:  AppBar(
      backgroundColor: Colors.white,
      leading: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.orange),
      title: Text('Terms&Conditions',style: TextStyle(fontSize: 30,color: Colors.black),),
      centerTitle: true,
    ) ,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(_info_model!.data!.terms.toString(),style: TextStyle(fontSize:30 ),)
          ],
        ),
      ),


    ),);
  }
}
Info_model? _info_model;
void getHomeData() {

  DioHelper.getData(
      url: termsEndPoint,
      token: token
  ).then((value) {

    _info_model=Info_model.fromJson(value.data);


  }).catchError((error){
    //   print('hhhhhhhhhhhhhhhhhhhhhh');
    print(error.toString());

  });
}